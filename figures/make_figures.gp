# make_figures.gp
#
# Draws the dissertation report's figures from the tables written by
# notebooks/04_accuracy_and_efficiency.ipynb.
#
# Usage (works from any directory):
#   gnuplot figures/make_figures.gp                  # EPS figures for the report
#   gnuplot -e "fmt='png'" figures/make_figures.gp   # PNG copies, e.g. for the README
#
# Input:  results/tables/*.csv
# Output: results/figures/<name>.ps  (or .png)
#
# Figures, in the order they are drawn. Those marked * are extras not used in the report.
#   all-fl               Win rate compared to BSP for all races
#   all-count-vol        Count and volume of BSP values across all races
#   groups-calib-error * Calibration error by category
#   groups-logit         Error of the logistic regression slope and intercept by category
#   groups-fl-mean     * Win rate compared to implied probability by category
#   groups-fl-count      Frequency of count for BSP values by category
#   groups-fl-vol        Frequency of volume for BSP values by category
#   groups-acc           Brier and log-loss skill scores by category, with 95% CIs
#   groups-count         Number of races and trade volume per category
#   all_ss_random        Skill scores of random predictions vs market predictions
#   all-strats           Mean profit per bet of each strategy across all races, with 95% CIs
#   groups-fav-bet       Favourite betting strategy by category
#   groups-hedge-bet     Favourite hedging strategy by category
#   groups-harville-bet  Advanced (Hausch et al.) strategy by category

# ---------------------------------------------------------------------------
# Setup
# ---------------------------------------------------------------------------
if (!exists("fmt")) fmt = "ps"

# Paths are relative to this script, so it can be run from anywhere.
root   = system("cd \"$(dirname '" . ARG0 . "')/..\" && pwd") . "/"
tables = root . "results/tables/"
outdir = root . "results/figures/"
system("mkdir -p '" . outdir . "'")

# Figure size multipliers: EPS is width*5 by height*3 inches; PNG is width*1000 by height*600 pixels.
width  = 1
height = 1

# begin(name) opens the output file for one figure; close it with "set output".
begin(name) = (fmt eq "png") \
    ? sprintf("set terminal pngcairo enhanced size %d,%d; set output '%s%s.png'", \
              int(width*1000), int(height*600), outdir, name) \
    : sprintf("set terminal postscript enhanced eps color size %g,%g; set output '%s%s.ps'", \
              width*5, height*3, outdir, name)

set datafile columnheaders
set datafile separator comma
set ytics nomirror
set xtics nomirror
unset colorbox
set style fill solid
set palette rgbformulae 33,13,10

# Category groupings used throughout (one panel per category in the 3x3 figures)
cats = "race_no distance_f hour race_type location nrunners race_ppvol overround"

# ---------------------------------------------------------------------------
# Favourite-longshot bias: all races
# ---------------------------------------------------------------------------
set key right bottom
set key auto columnheader noopaque
set style data lines
set xlabel "Implied Probability"

width = 1.5

# all-fl: win rate with Wilson confidence intervals against the expected win rate
eval begin("all-fl")
set ylabel "Win Rate"
set yrange [0:1]
plot tables . 'all-fl.csv' \
        using 1:(column("mean")):(column("confidence-l")):(column("confidence-u")) \
        title "Win Rate With Wilson Confidence Intervals" with yerrorbars pt 6, \
     x title "Expected Win Rate"
set output

# all-count-vol: count (left axis) and traded volume (right axis) per BSP tick
eval begin("all-count-vol")
set key left top
set yrange [*:*]
set ylabel "Count"
set y2label "Volume (GBP)"
set y2tics
plot tables . 'all-fl.csv' using 1:(column("count")/column("tick_size")), \
     '' using 1:(column("volume")/column("tick_size")) axes x1y2
set output

unset y2label
unset y2tics

# ---------------------------------------------------------------------------
# Favourite-longshot bias: by category (3x3 panels)
# ---------------------------------------------------------------------------
set key width 0
set key right bottom
set style data lines
set tics nomirror
set border 31
unset margins

width  = 3
height = 3

# groups-calib-error: calibration error with 95% CIs (not used in the report)
eval begin("groups-calib-error")
set multiplot layout 3,3
set ylabel "Calibration Error"
unset title
unset key
set errorbars lc black
set xtics rotate by 20 right
set style histogram errorbars
do for [c in cats] {
    set xlabel (c) noenhanced
    plot tables . c . '-calib-error.csv' using 2:5:6:xticlabels(1) with histogram
}
unset multiplot
set output

# groups-logit: logistic regression slope (minus 1) and intercept, with 95% CIs
# (a perfectly calibrated group has both at zero)
eval begin("groups-logit")
set multiplot layout 3,3
set ylabel "Difference From Expected Value"
unset title
set key left top
set key at screen 0.7,0.3
set errorbars lc black
set xtics rotate by 20 right
set style histogram errorbars
do for [c in cats] {
    set xlabel (c) noenhanced
    plot tables . c . '-regress.csv' \
            using (column(2)-1):(column(6)-1):(column(7)-1):xticlabels(1) with histogram title "Slope", \
         '' using 3:4:5:xticlabels(1) with histogram title "Intercept"
    unset key
}
unset multiplot
set output

# groups-fl-mean: win rate against implied probability per sub-group (not used in the report)
eval begin("groups-fl-mean")
set multiplot layout 3,3
unset key
set key inside left top
unset colorbox
set ylabel "Mean Returns"
set xlabel "Implied Probability"
do for [c in cats] {
    set title (c) noenhanced
    plot for [COL=3:*] tables . c . '-win_lose-mean.csv' using (1/column(1)):COL:(COL) lc palette with points, \
         x lc "black" dt 2
}
unset multiplot
set output

# groups-fl-count: frequency of count per BSP tick
eval begin("groups-fl-count")
set key right top
set multiplot layout 3,3
unset colorbox
set ylabel "Count"
do for [c in cats] {
    set title (c) noenhanced
    plot for [COL=3:*] tables . c . '-win_lose-count.csv' using (1/column(1)):(column(COL)/column(2)):(COL) lc palette
}
unset multiplot
set output

# groups-fl-vol: frequency of traded volume per BSP tick
eval begin("groups-fl-vol")
set key left top
set multiplot layout 3,3
unset colorbox
set ylabel "Volume (GBP)"
do for [c in cats] {
    set title (c) noenhanced
    plot for [COL=3:*] tables . c . '-pptradedvol-sum.csv' using (1/column(1)):(column(COL)/column(2)):(COL) lc palette
}
unset multiplot
set output

# ---------------------------------------------------------------------------
# Test statistics
# ---------------------------------------------------------------------------
set style data histogram

# groups-acc: Brier and log-loss skill scores by category, with bootstrapped 95% CIs
eval begin("groups-acc")
set multiplot layout 3,3
set ylabel "Skill Score"
unset title
set xtics rotate by 20
set xtics right
set yrange [*:*]
set key at screen 0.7,0.3
do for [c in cats] {
    set xlabel (c) noenhanced
    plot tables . c . '-acc.csv' using 2:6:7:xticlabels(1) title "Brier", \
         '' using 3:8:9:xticlabels(1) title "Log-Loss"
    unset key
}
unset multiplot
set output

# groups-count: number of races (left axis) and trade volume (right axis) by category
eval begin("groups-count")
set key
set style histogram clustered
set multiplot layout 3,3
set ylabel "Number of Races"
set y2label "Trade Volume"
set y2tics
set offsets 0,0,0,1000
do for [c in cats] {
    set xlabel (c) noenhanced
    plot tables . c . '-acc.csv' using 4:xticlabels(1) title "Number of Races", \
         '' using 5:xticlabels(1) axes x1y2 title "Trade Volume"
    unset key
}
unset multiplot
set output

width  = 1
height = 1

# all_ss_random: skill scores of random predictions compared to the market
eval begin("all_ss_random")
unset offsets
unset y2label
unset y2tics
set style data lines
set xtics norotate
set xtics center
set key inside right top
set ylabel "Skill Score"
set xlabel "Chosen Probability of Winning"
plot tables . 'all_ss_random.csv' using 1:2 title "Brier", '' using 1:3 title "Log Loss"
set output

# ---------------------------------------------------------------------------
# Betting strategies: mean profit per bet with bootstrapped 95% CIs
# (columns: group, 2.5% quantile, 97.5% quantile, mean, Sharpe ratio)
# ---------------------------------------------------------------------------
set style data histogram
set style histogram errorbars
unset logscale
unset key

# all-strats: each strategy across all races
eval begin("all-strats")
set xlabel "Strategy"
set ylabel "Profit per Bet"
plot tables . 'all-strats.csv' using 4:2:3:xticlabels(1)
set output

width  = 3
height = 3
set xtics rotate by 20 right

# groups-fav-bet: favourite betting strategy by category
eval begin("groups-fav-bet")
set multiplot layout 3,3
set ylabel "Return Per Bet"
do for [c in cats] {
    set xlabel (c) noenhanced
    plot tables . c . '-bet-fav.csv' using 4:2:3:xticlabels(1)
}
unset multiplot
set output

# groups-hedge-bet: favourite hedging strategy by category
eval begin("groups-hedge-bet")
set multiplot layout 3,3
do for [c in cats] {
    set xlabel (c) noenhanced
    plot tables . c . '-hedge-fav.csv' using 4:2:3:xticlabels(1)
}
unset multiplot
set output

# groups-harville-bet: advanced (Hausch et al.) strategy by category
eval begin("groups-harville-bet")
set multiplot layout 3,3
do for [c in cats] {
    set xlabel (c) noenhanced
    plot tables . c . '-bet-harville.csv' using 4:2:3:xticlabels(1)
}
unset multiplot
set output

print sprintf("Figures written to %s (%s)", outdir, fmt)
