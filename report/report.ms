.so macros.ms
.nr PS 12p
.TL
Which Factors Contribute to the Accuracy and Efficiency of
Horse Racing Betting Markets?
.AU
Matthew Abel
.AI
King's College London
.AB
Prediction markets have become increasingly popular over the
last few years with the advent of new cryptocurrency
services such as Polymarket and Kalshi. A prediction market
allows users to buy and sell assets with values that depend
on a future outcome. An example of a
prediction market with a long history is that of the
racetrack. Markets at the racetrack are extremely regular,
with a lot of repeated similar events making them valuable
research targets. The structure of the markets is not
dissimilar to those of traditional financial markets,
enabling comparisons to be drawn. This report seeks to
identify whether racing markets can be considered accurate
or efficient. Accuracy and efficiency are two key metrics
indicating how and when a prediction market is useful. It is
typical for investment firms to create funds of stocks
grouped by certain categories such as industry or market
location in order to meet different investment requirements
of risk. Different distinctions of horse races are likewise
developed in this report and examined.
A novel approach is taken with the decomposition of the
market data into multiple market classification schemes. The
market examined utilises a continuous double auctions,
rather than the parimutuel market typically examined in the
prevailing research.
It is found that, in
general, the UK horse racing exchange Betfair can be
considered accurate in odds generation. Certain factors
affect this accuracy, such as the race number or the number
of runners. No strong evidence is found to imply a lack of
market efficiency for the entire racing market or any of the
groups.
.AE
.P1
.pn 1
.bp
.SH
.SHD Acronyms
.GE BHA "British Horseracing Authority"
.GE BSP "Betfair Starting Price"
.GE CDA "Continuous Double Auction"
.GE CLOB "Central Limit Order Book"
.GE DPM "Dynamic Parimutuel Market"
.GE HKJC "Hong Kong Jockey Club"
.GE IP "In-play (after the off)"
.GE PNL "Profit and Loss"
.GE PP "Pre-play (before the off)"
.GE WAP "Weighted Average Price"
.bp
.SHD Glossary
.GE "Arbitrage" "A risk-free opportunity to make money"
.GE "Back" "A bet that something will happen"
.GE "Daily Double" "A bet on the winner of two consecutive races"
.GE "Each-way" "A combination of a win and place bet"
.GE "Exacta" "A bet on two horses which must come first and second"
.GE "Lay" "A bet that something will not happen"
.GE "Off" "The start of the race"
.GE "Options Contract" "A right but not an obligation to buy or sell a security at a given date."
.GE "Overround" "The total implied probability of all events in a market"
.GE "Pandas" "Python library for data manipulation"
.GE "Parlay" "A single bet which links multiple consecutive wagers"
.GE "Place" "Come first or second in a race"
.GE "Prediction Market" "A market that facilitates bets on the outcomes of future events"
.GE "Python" "Programming Language"
.GE "Show" "Come first, second or third in a race"
.GE "Tipster" "Professional who publishes betting guides"
.bp
.NHD Introduction
.PP
A recent surge in the popularity of prediction markets has
brought them to the forefront of public discussion.
Services such as Polymarket and Kalshi are offering the
opportunity to bet on many world events. There has been
research to suggest that prediction markets are more
accurate than other forecasting techniques including polls.
.[
prediction market long run
.]
Horse racing markets are also fundamentally prediction
markets, and have a long history of widespread use. As a
prediction market, horse races provide good data since there
are so many and the approximate date and time is known
before hand. It is easier to determine their accuracy in
this context as there are many repeated similar markets,
unlike predictions for political events which can be very
far apart.
.PP
Racing markets can be considered largely analogous to
traditional financial markets, with the only real difference
being social convention.
.[
snyder 1978
.]
Wagers can be considered similar to binary
options contracts, where there are two different payoff
values dependent on the result of an external event. The
difference between options and wagers here is that the value
of an option is dependent on the value of an underlying
asset at a future date. Because of this, options are priced
using the Black-Scholes model
.[
#
black scholes
.]
where it can be shown that buying a combination of the
underlying asset and a risk-free investment can produce a
payoff equivalent to the option. If not priced this way, an
arbitrage is apparent and an inefficiency in the market
occurs. Without an underlying asset to hedge against, wagers
must be priced differently. Bets are fundamentally different
from stocks as the lifetime of a bet is finite and the
lifetime of a stock is not.
.[
Thaler ziemba 1988
.]
.PP
In wider financial markets, it is typical for index funds to
be selected from a certain subsection of securities. For
example the S&P 500 tracks the top 500 stocks in the
United States and the FTSE 100 tracks the top 100 companies
on the London Stock Exchange. Both of these are examples of
funds limited to investments within a certain region.
Despite this, little research has been done on how
prediction markets can be classified in similar ways for
bettors to make informed decisions on selected groups of
races only.
.NHD "Motivation" 2
.PP
I was motivated to research this area due to the recent
popularity of prediction markets as a tool for forecasting.
As well as this, the regulation surrounding prediction
markets is currently heavy within the UK. This is because
they fall under the jurisdiction of the Gambling Commission.
Many of the newly popular prediction market sites are
currently illegal to use within the UK, but established
exchanges such as Betfair are completely legal.
.PP
As prediction markets are considered gambling,
winnings within the UK are not taxed. This means
that an equivalent strategy within a gambling market and the
stock market may prove ultimately more profitable in the
gambling market as the only fees to be paid are commission
to the exchange. In the case of Betfair, commission can be
even less than just 2% of successful bets.
.PP
I want to understand how different classifications of races
can give us new insights into the markets. These insights
can be used to aid in the identification of good practices
for eliciting forecasting odds, or for the production of
profit through betting strategies. Additionally, this
research may be applicable outside of the horse racing
context, especially in general prediction markets, but also
financial markets as a whole.
.NHD "Scope" 2
.PP
This project explores how the classification of horse races
can affect the accuracy and efficiency of the market. The
classifications are both external factors and internal
market factors. Existing research is used to determine the
best practices for identifying accuracy and efficiency. A
sample database of horse races will be compiled and tested
against to obtain results.
.NHD "Aims" 2
.PP
This project aims to explore the relevance and impact of
external and market factors on the accuracy and efficiency
of horse racing markets. Horse races can be classified by
various external factors such as race time, location and
distance. Internal classifications involve market
information such as volume or overround. Similarly,
traditional financial instruments can be classified by
external factors like their industry or location of
operations. They also feature many of the same internal
market factors including volume.
.NHD "Objectives" 2
.PP
To accomplish my aims I will:
.BP
Perform a systematic review of existing research to
determine existing standards for market accuracy and
efficiency. Identify whether racing markets are generally
considered to be accurate or efficient.
.BP
Obtain an appropriate dataset for research.
.BP
Determine the accuracy of my dataset.
.BP
Determine the efficiency of my dataset.
.BP
Determine several classifications of horse races to compare.
.BP
Determine the relative accuracy of the classifications.
.BP
Determine the relative efficiency of each of the
classifications.
.BP
Attempt to exploit any inefficiencies for profit.
.NHD "Background" 1
.NHD "Bookmaking" 2
.NHD "Fixed-Price Odds" 3
.PP
A fixed-price bookmaker will quote prices (odds) at which
they are willing to sell bets. If the bet pays out, the
bettor receives the return originally quoted to them. The
bettor is given a guarantee of their winnings before placing
the bet. It is important to note that it is unlikely a
bookmaker will allow a bettor to ``lay'' a bet, that is to
bet that something
.I "will not"
happen. Bookmakers make their money by appropriately setting
odds such that in all cases (or at least over a period of
time), they will ensure a profit. This is done by changing
odds to account for the amount of money bet already
(balancing the books) and by providing unfair odds that do
not sum to one.
.PP
There are multiple different ways to
represent odds prices. Throughout this report, I will use
decimal odds. Decimal odds are given as real numbers greater
than one which represent the total payout for a winning bet.
For example if a bettor bets £100 dollars at odds of 2,
their winning payout would be £200 - a profit of £100 or
100%. The payout for all losing bets is 0 (a loss of all
money bet). Assuming that the expected value of a wager is zero
(no profit or loss), the implied probability of winning is
given by @1 smallover odds@.
.NHD "Parimutuel Odds" 3
.PP
Parimutuel betting (commonly known as a `tote' in the UK) is
a system in which money for all bets is placed into a pool
and then distributed to winning bettors. This means that
bettors are not given an exact payout quote at the time of
purchasing their bet, but they may be given an estimate.
Tote operators make money by taking a certain percentage of
the pool for themselves, typically called the ``track
take''. These types of bets are typically facilitated by the
track operator themselves, such as the HKJC.
.[
HKJC Pari-mutuel
.]
.NHD "Betfair Exchange" 3
.PP
Betfair is a UK based company which operates a betting
exchange service. A betting exchange is different from a
typical bookmaker in that instead of the operator quoting
odds prices or offering a tote service, it allows users to
form bets with one another. Betfair does this using a CLOB
(Central Limit Order Book),
allowing users to either back (long) a bet or lay (short)
one. Within the context of a horse race, this means that the
win market (where bets are paid out only if the horse
places first) features a different asset for every selection
(runner) in the race. They can be thought of as largely
analogous to options contracts, where the layer agrees to
pay the backer a certain sum of money dependent on the
outcome of the race.
.PP
A unique feature of the Betfair racing market is its
``starting price'' betting. Bettors who use the starting price
option have their bets matched into the market at the off
(when the race begins). They are also able to set minimum
odds to back or maximum odds to lay. The price determination
maximises volume and gives backers and layers the same
price. In order to do that, existing positions within the
CLOB may be matched against as well. Starting price bets
aren't guaranteed to be matched if the odds limit is at or
above the starting price.
.[
Betfair FAQ
.]
.NHD "Literature Review" 2 
.NHD "Accuracy of Horse Racing Markets" 3
.NHD "Measurement of Forecast Accuracy" 4
.PP
One of the earliest methods for scoring the accuracy of a
forecast is provided by Brier.
.[
#
brier 1950
.]
The Brier score is determined as a result of many
predictions using the mean squared difference between the
estimated probability and the actual outcome. Formally:
.EQ
BS = 1 over N sum from t=1 to N (f sub t - o sub t ) sup 2
.EN
where @f sub t@ is the forecast probability, @o sub t@ is
the actual outcome (@0@ if did not happen or @1@ if did) and
@N@ is the number of forecasts.
In this
system, a perfect forecast is given a score of zero. This
can only be achieved if the forecast guesses with 100%
certainty every time. 
Ranked Probability Score
.[
epstein 1969
.]
is an extension of the Brier score to support multiple
outcomes. Ranked Probability Score with binary outcomes can
be shown to be equivalent to the Brier score.
.[
discrete brier weigel
.]
Brier score will be the most useful in this report, as in
(most) betting markets there are only two possible outcomes:
a winning bet or a losing bet.
.PP
Good
.[
#
rational decisions
.]
developed a method for scoring estimates of probabilities
now known as log-loss. This method has since become popular
as a scoring mechanism for machine learning models as it
highly punishes overconfidence in incorrect predictions. For
a binary outcome:
.EQ
LL = - 1 over N sum from t=1 to N o sub t log ( f sub t ) +
( 1 - o sub t ) log ( 1 - f sub t )
.EN
where @f sub t@ is the forecast probability, @o sub t@ is
the actual outcome (@0@ if did not happen or @1@ if did) and
@N@ is the number of forecasts.
Log-loss has become incredibly popular as a cost function
(function that scores prediction accuracy) for machine
learning. Machine learning textbooks
.[
deep learning goodfellow
.]
.[
murphy machine learning
.]
share that log-loss should be considered the standard cost
function. Since log-loss easily supports binary outcomes, it
can be applied in addition to Brier score as a measurement
of accuracy for betting predictions.Both Brier scores and
log-loss will be useful in ranking the accuracy of markets.
The primary difference between them is how harshly they rank
confident incorrect guesses.
.PP
Skill scores are a way to measure forecast skill relative to
a given baseline.
.[
murphy 1988
.]
These can be applied to both the Brier score and log-loss.
.EQ
SS = 1 - score over score sub {reference}
.EN
A skill score of zero indicates that the forecast is just as
good as the baseline forecast. Conversely to the normal
Brier score and log-loss, a higher skill score is an
indication of better performance. Negative skill scores are
worse than the reference and positive skill scores are
better than the reference.
.PP
Wunderlich and Memmert
.[
#
wunderlich are betting
.]
demonstrated that the betting returns of a strategy are not
necessarily indicative of accuracy in a forecasting model,
despite demonstrating profitability. Instead, there is a
difference in a model forecasting accurately and profitably.
.NHD "Use of Markets for Forecasting" 4
.PP
Current research shows prediction markets to provide
accurate estimates of outcomes for elections over both long
and short time frames.
.[
long term
.]
Rothschild
.[
#
forecasting elections
.]
showed that, when used appropriately, prediction markets can
perform significantly better than the very best polls.
Elections are just one example, but prediction markets have
been used to great success across many different domains of
forecasting.
One study found prediction markets to outperform a
survey when used to predict the reproducibility of studies
published in psychology journals.
.[
reproducibility
.]
.PP
Because of the demonstrated favourite-longshot bias (see
more below) in
horse racing, many studies attempt to convert odds given
by bookmakers or markets into ``real'' probabilities.
\[S ah]trumbelj
.[
#
Erik determining forecast
.]
used Shin's
.[
#
shin 1993
.]
model to create more accurate forecasts than those created
through odds normalisation or regression. These methods are
criticised by Clarke et al
.[. (
#
Clarke adjusting 
.])
for potentially producing negative probabilities and in the
case of normalisation, not accounting for the
favourite-longshot bias. They share that an alternative
power method instead performs as well as Shin's, or better.
The necessity of these models in the first place
demonstrates the lack of accuracy present within the
markets. If the given odds can be altered using some
function to provide forecasts of greater accuracy, then the
market obviously isn't producing the best possible forecasts
inherently.
.PP
Strijbis and Arnesen
.[
#
variance markets
.]
find that the setup of the market influences accuracy
the most, while features of the event and the market's
participants have an insignificant impact. Market setup
incorporates factors such as liquidity and the market
mechanism. Prediction
markets require the right incentives in order to produce the
most accurate and up to date forecasts.
.[
designing markets prediction
.]
Markets will also suffer if a group of insiders are able to
influence the outcome. If the goal of the market is to
produce the best forecast, then it must incentivise
immediate truth-telling instead of deception. A typical
parimutuel racing market fundamentally does not meet this
requirement. This is because market participants are
encouraged to wait until the very last moment to bet, so as
to hide their beliefs about the probability of a win. A
continuous double auction
(the primary mechanism of the Betfair Exchange) encourages
price discovery over time but may still incentivise
participants to lie about their true valuation. Since the
price of a parimutuel market is not set until the market
closes, there is no incentive for the market to track
changes in information unlike a CDA.
.PP
Pennock
.[
#
pennock 2004
.]
suggests an alternative ``dynamic pari-mutuel market'' (DPM)
which functions similarly to typical parimutuel betting. A
DPM allows investors to buy and sell bets at a changing
rate determined by the market, giving them an opportunity to
hedge or sell their bets early.
.NHD "Favourite-Longshot Bias" 4
.PP
The favourite longshot-bias has been demonstrated within
racing markets as far back as 1949.
.[
Griffith 1949
.]
This is a phenomenon in which bettors tend to prefer to bet
on outlier horses, as opposed to the safer options. In turn,
this moves the odds given by the market as favourite horses
are given worse implied probabilities of winning and
longshots are given better implied probabilities of winning.
Other than the long and short-odded horses, Griffith found
that the odds for horses were on average accurate.
.PP
Some studies have attempted to determine why this is the
case. Weitzman
.[
#
Weitzman 1965
.]
used utility theory to derive a utility curve for one bettor
and found it to be similar to the theoretical one proposed
by Markowitz.
.[
#
the utility of wealth
.]
To follow this study, Ali
.[
#
Ali 1977
.]
observed over 20,000 races and found the favourite-longshot
bias to be present. Ali creates a wealth utility function
and determines that the average bettor values risk, thereby
causing the discrepancy in prices.Subsequent research has
also conjectured that bettors have a preference for risk at
the racetrack. Kanto et al
.[. (
#
Kanto
.])
found this to be the case using a data sample from Finland.
.PP
Golec and Tamarkin
.[
#
skewness not risk
.]
suggested an alternative explanation for the
favourite-longshot bias. They claimed that it was possible
that bettors could actually be risk-averse and instead have
a preference for skewness. Skewness here is the asymmetry of
betting returns about the mean. To back this up they examined
popular betting strategies and determined that they were
better aligned with a preference for skewness rather than
risk. Another theory is put forward by Snowberg and Wolfers
.[
#
snowberg wolfers 2010
.]
which states that the bias can be accounted for by the
misperceptions of risk by the bettors.
.PP
The bias has also been shown to not be universal. In
contrast to the evidence found in North American markets,
Busche and Hall
.[
#
Busche Hall
.]
found that bettors at the Hong Kong Jockey Club do not
exhibit the same apparent risk-loving behaviour. They posit
that the larger betting volume in Hong Kong may influence
the bias.
.NHD "Efficiency of Horse Racing Markets" 3
.NHD "Measurement of Market Efficiency" 4
.PP
Fama
.[
#
fama 1970
.]
set out three tests of efficiency for markets depending on
how rigorously they can be described as efficient.
An efficient market is one that is said to fully incorporate
all the available information into the prices. This means
that, for an efficient market, it should be impossible to
create a profit generating strategy.
For a market to be 
.I "weak form"
efficient, the information set is constrained to that of
historical price data. The
.I "semi-strong form"
tests also incorporate information widely available to the
general public. In the
.I "strong form"
tests, the insight of investors with insider knowledge is
also considered.
.PP
A significant amount of research into the study of
efficiency in racing markets is specifically focussed on
parimutuel markets. This is the most common market for
racing in the United States as well as Hong Kong.
Comparatively little exists for markets using a CDA such as
Betfair. This makes this report particularly interesting as
a way to compare parimutuel markets with a CDA. It also
means that this work has greater
applicability to external financial markets, which typically
use a form of CDA as their market mechanism.
.NHD "Relationship of Exotic Bets" 4
.PP
A lack of market efficiency can be demonstrated by comparing
the prices of exotic betting options with equivalently
produced parlays. Exotic bets involve betting on a
combination of different outcomes for different horses
within one wager. Popular examples include the daily double,
in which the first two winning horses of the day must be
predicted correctly, and an exacta, where the first two
horses of a race must be predicted in order. A parlay is
similarly a wager of multiple outcomes, 
constructed from multiple separate bets with the winnings
from earlier bets accumulated into future ones.
.PP
Certain exotic bets can be shown to have an equivalent
payoff function to an appropriately constructed parlay. For
the market to be considered efficient, both the exotic bet
and the parlay must have an equivalent price. This
difference in a typical financial market may be considered
an arbitrage opportunity as one would be able to buy at the
low price and sell at the high price, guaranteeing a profit.
Within parimutuel markets however this is not possible, as
bets cannot be bought and sold at different prices. This is
fundamentally similar to established options pricing theory.
The payoff of an option can be shown to be replicated by
purchasing a quantity of the underlying asset and a risk
free asset.
.[
black scholes
.]
.[
option pricing simplified
.]
.PP
Ali's
.[
#
ali 1979
.]
analysis of 1,089 racing days uses this principle to compare
the prices of daily doubles and their equivalently
constructed parlays. In this analysis, Ali finds that the
efficient market hypothesis could possibly hold for racing
markets as the difference in price between the exotic bets
and the parlays is not statistically significant.In a
different study however, Asch and Quandt
.[
#
asch 1987
.]
find that for both exacta and daily double bets, their
payoffs are not the same as equivalent bets on individual
horses, thus demonstrating market inefficiency.
.PP
It is uncommon for betting exchanges to offer any betting
options for horse races outside of win, place and each-way.
This means that a comparison of exotic bets and parlays is
not possible. While it may be possible to compare the prices
of the win and place bets to the each-way bets, the limited
volume of non-win markets makes this difficult.
.NHD "Betting Strategies" 4
.PP
The most obvious way to demonstrate a lack of market
efficiency is to produce a simple, profitable betting
strategy.
.PP
In a study of 1,730 races in American parimutuel win
markets, Snyder
.[
#
Snyder 1978
.]
showed that because of the favourite-longshot bias, prices
were indeed more favourable for the favourite horses, but
the track take was too significant for a strategy of
favourite betting to be profitable. This indicates some
level of
.I "weak form"
efficiency, however without the track take present (and
betting habits remaining the same), it would certainly be
impossible to describe the market as informationally
efficient. Snyder also demonstrated that this bias exists
among betting experts (or ``tipsters'') which makes it seem
unlikely that the market is
.I "strong form"
efficient.
.PP
Hausch et al
.[. (
#
hausch 1981
.])
set about creating a technical betting system for place and
show markets. Their strategy only used historical pricing
data and so attempted to demonstrate a lack of
.I "weak form"
efficiency.They argued that their system successfully
exploited a market inefficiency and was able to generate a
consistent profit. To do this, they derived estimated place
and show probabilities from the implied win probabilities
given by the win market using Harville's
.[
#
harville 1973
.]
method. The win market is assumed to be informationally
efficient. This allows them to profit through mispricing of
show and place odds relative to the win market.
With a follow up paper, Hausch and Ziemba
.[
#
hausch 1985
.]
greatly improved the system making it more profitable
and applicable to any racetrack. They also demonstrated how
more people using the system would ultimately cause the
market to become efficient.
.NHD "Specification & Design"
.NHD "Requirements" 2
.PP
First of all, a large, high quality data set needs to be
sourced. This is especially important, as the data will be
decomposed into smaller groups and so a large initial
dataset means there will still be sufficient data points to
analyse after this. The software needs to support flexible
classifications of races so that they can be quickly altered,
adjusted, added or removed as required. This also makes the
software easier to maintain and manage. With the data,
metrics determining the accuracy of the market need to be
calculated and strategies need to be back tested.
.NHD "Data Selection" 2
.PP
I considered three different data sources for use in this
project. The first source is the officially provided Betfair
historical pricing data. This information is available at a
free tier for all months the data is offered. The data is
structured like exchange data, documenting price changes
over time. For my purposes, this is beyond what I need as I
am only interested in the BSP (Betfair Starting Price), and
not the price evolution.
.PP
Data from the Hong Kong Jockey Club was also considered.
After obtaining a dataset by scraping the publicly available
results data on their website, I determined it to be
insufficient in size as there were only 2,000 races
available.
.PP
The dataset I ultimately chose was from Betfair, but not
through their typical historical betting data website. They
also maintain a historical archive of starting price data
and make it freely available online. This dataset also came
with a few extra benefits. Some data which is gated by the
premium tiers in the historical data files is made
available freely, such as the volume. The dataset is also
significantly larger than what was available from the
historical pricing data. It contains data on over 170,000
races in the UK going back as far as 2008, while the
historical pricing data only goes back to 2016.
.PP
While the chosen dataset is excellent, it is worth noting
that the market mechanism for the Betfair exchange is
different than most markets surveyed in the literature. This
is because Betfair exchange uses a CDA instead of a
parimutuel system. The data from this set cannot be assumed
to have the same characteristics as those found in the
parimutuel markets.
.NHD "Classification Design" 2
.PP
Race classifications were chosen to represent various
different clusters of races which appeared likely to impact
the accuracy and efficiency of the market. Two groups of
classifications were developed: external market factors and
internal market factors. The external market factors involve
information outside of the market but which may still
ultimately be relevant. An equivalent in traditional
investing would be grouping companies by industry. Internal
market factors are those which can be determined simply by
reading the current state of the market. Applied to
traditional finance, this could be a metric such as PE
ratio. Good factors need to have a large number of races per
group and appear as though they may have some market impact.
.PP
For external factors, I chose race number, distance, hour of
day, race type, location and number of runners. Race number
and hour of day are chosen to reflect how the market might
evolve over time. It is common for stock exchanges to have
increased trading volume and activity at the start of the
trading day and I imagine that similar habits may appear in
racing. Distance, race type, location and number of runners
can be considered largely analogous to the industry of a
company. These represent different areas of interest for
racegoers, owners and jockeys.
.PP
The internal factors chosen are pre-play trade volume and
overround. Number of runners could also be considered to be
a market factor in that it affects the number of selections
to choose within an individual racing market. Trade volume
can generally be considered a measurement of market
popularity and it would be reasonable to guess that higher
popularity results in greater market accuracy and
efficiency. Overround is a more betting specific metric,
which measures the total probability of one event occurring
given the implied probabilities of the odds. Traditional
bookmakers make money by offering odds with an overround
greater than one as this means that a bet spread amongst all
options can not be adjusted to make a guaranteed profit in
any scenario. It would then seem likely that if any of the
markets are offering an overround of less than one, a profit
can surely be made.
.NHD "Accuracy Metrics" 2
.PP
A combination of different techniques are to be used. First
of all, the existence or non-existence of the
favourite-longshot bias must be determined. Secondly,
accuracy test statistics are to be implemented to find the
relative accuracy per grouping.
.PP
Methods for de-biasing odds are not used as these assume in
the first place that the market is inaccurate. Instead I
wanted to determine the level of market accuracy and not
whether the odds could be transformed into something more
accurate.
.NHD "Efficiency Testing" 2
.PP
Due to my choice of dataset, I do not have an opportunity to
compare prices of exotic bets to parlays. This means that
the most straightforward way to test for market efficiency
is to subject the market to various betting strategies.
Multiple different strategies are to be implemented and
compared to try and find a market inefficiency.
.NHD "Software Architecture" 2
.PP
The data will be broken up into three relational tables in
order to increase operational efficiency. This is because
the original dataset includes many duplicated sections of
data, relevant only at specific levels of detail. The tables
chosen are events, races and runners. Once the data is
normalised this way, it becomes easy to perform operations
on one section before joining it to another if it holds
relevant details.
.PP
Test statistics and other details can be implemented fairly
straightforwardly through Pandas. The key to this is making
sure that categories can be easily interpreted and selected
when calculating statistics.
.PP
Betting strategies are simplified as functions which simply
choose which selections to bet on and how much. This means
that details about profit and results can be handled in one
separate instance for all different strategies. Betting
strategies are easier to implement and alter as they do not
have repeated code found within them.
.NHD "Methodology"
.PP
This section summarises the methodology used to obtain
results. Further detail is explored in the implementation
section.
.NHD "Data Acquisition" 2
.PP
Data is first acquired by downloading from the Betfair BSP
price files directory. Once downloaded, they are then
pre-processed into a more usable format. Win and place
market files are stitched together, ensuring that no errors
are caused in the process.
.NHD "Accuracy" 2
.PP
Implied and observed win rates are calculated per BSP group.
These allow the shape of the distribution to be seen
visually, as it should be linear. Each BSP bucket has a 95%
Wilson confidence interval determined to see if the results
are statistically significant.
.PP
A calibration regression test is done using logistic
regression. This helps numerically identify
favourite-longshot bias or other bias that may be present in
the sample.
.PP
Brier and log-loss scores are determined per race originally
and then averaged for final results. Skill scores are
determined using the scores determined from the dataset as a
whole as the baseline. This makes it clear whether a
grouping can be considered more or less accurate than the
dataset as a whole. Random samples of groups are taken to
identify the mean skill scores and confidence intervals.
.NHD "Efficiency" 2
.PP
Three strategies are chosen to be compared.
The first two strategies to be used are simple
favourite-betting strategies. These strategies are chosen as
they will very quickly identify one source of market
efficiency, if present. They are also very common ``system
bets'' used by punters at the racecourse. The first strategy
simply bets one unit on every single favourite horse. An
efficient market should not allow this strategy to make any
profit, but it also should not result in a loss. The other
favourite-betting strategy is the same, except the amount
bet is scaled by the implied odds of the horse winning. This
strategy aims to avoid situations that may arise in the
first strategy where an unlikely favourite wins and appears
to result in a significant profit. The hedging strategy as
described limits large wins from unlikely favourites.
.PP
I will also use a strategy adapted from Hausch et al
.[. (
#
hausch 1981
.]).
This strategy is chosen as it is the first major example of
a betting strategy being used to demonstrate market
inefficiency in horse racing. As the original strategy is
used in the context of a parimutuel market, the impact of a
bet on the odds price is known beforehand. This is not
possible with my dataset (though it is possible while
betting live) and so I have altered the bet sizing portion
of the strategy to use the Kelly Criterion. That is:
@f* = ( bp - q ) / b@
where @f*@ is the fraction of wealth to bet, @p@ is the
likelihood of the bet winning, @q@ is @1-p@ and @b@ is the
proportion of wealth won if successful.
.[
Thorp 2006
.]
This means that unlike the original strategy, it is not
suitable for use in real betting environments as it does not
take into account how the bet will move the market. It is
still however useful for identifying market inefficiency,
but the profits reported may be exaggerated from what is
truly possible.
.PP
For the more advanced strategy, I chose to place a bet when
it is determined that the expected edge is greater
than 25%. This means that a significant amount of confidence
is required and if the strategy is good, it should in theory
result in a profit of 25% every time a bet is placed. The
bets use a scaled Kelly criterion of 10% in order to avoid
periods of boom and bust.
.PP
The strategies are tested against random samples of data in
order to bootstrap their expected return and confidence
intervals.
.NHD "Implementation"
.PP
In this chapter, I will discuss the process for developing
the software used to come to my results.
.PP
I decided to use Python through Jupyter Lab to write and run
my software. Jupyter Lab is the standard for data science
projects using python. Python features extensive
libraries for data analysis and statistics. Particularly
useful in this project is the Pandas library, which provides
a significant amount of functionality for working with
structured data.
.PP
To plot my results, I used the program Gnuplot. Gnuplot is
available as a Jupyter kernel and is capable of reading data
from files. It also natively supports a variety of output
formats, including PostScript which is easily embeddable
within this document. Separating data generation and data
visualisation also makes things simpler, especially when one
data file is used to create more than one plot.
.PP
For version control, I used Git to track changes to the
project over time. This included changes to the report
itself as it is written in a text file format and then
processed to create a PDF. The repository is mirrored to
GitHub, backing up my work and ensuring that a lost or
stolen device could not cause me to lose my work.
.NHD "Data Acquisition" 2
.PP
I produced a Python script to automatically download all of
the files found in my dataset and processed them to be used
within Pandas. The script saves the data to binary files for
quick retrieval. It makes sure to not re-download files it
has already obtained so it can easily update the existing
database. As well as this, it automatically slows down when
rate limited to ensure that all files are downloaded. The
total size of downloaded files is over 600MB.
.PP
After downloading, the data is preprocessed into a format
that makes it easier to use for my purposes. This involves
transforming the flat file structure into a relational one,
separating unrelated data. Entries for some columns need
altering. Locations need to be changed as the format for
location changes at one point in the files, moving from
truncated names to full location names. Some selection names
erroneously have their runner number included and so this is
removed. Distances are given as a string format containing
miles and furlongs and so are transformed to a single
integer representing the number of furlongs.
.PP
Win and place data are in their own separate files
originally and so must be joined together in order to use
both sets of data. The script identifies matching entries in
both sets of files using the race time and selection ID
which is a unique pairing. Pandas is able to validate this
as a one-to-one pair when using its join function. This
enables the place odds and win/lose result to be included
within the dataset.
.PP
The result of this processing is 3 binary data files
totalling just under 100MB using the structure found in
tables 1, 2 and 3.
.KS
.TS
tab(;) allbox;
lb lb lb
lf6 lf6 lf1.
Field;Data Type;Notes
event_id;Integer;Unique identifier provided by Betfair
location;String;
event_date;Datetime;
.TE
.TABLE "Events Structure"
.KS
.TS
tab(;) allbox;
lb lb lb
lf6 lf6 lxf1.
Field;Data Type;Notes
race_id;Integer;Unique identifier provided by Betfair
race_type;String;T{
Indicates the format of the race: handicap, hurdles, chase,
etc.
T}
place_n;Integer;Number of places for this race.
race_time;Datetime;
distance_f;Integer;Furlongs are one eigth of a mile long.
race_no;Integer;T{
Races are given numbers indicating their sequence position within an event.
T}
event_id;Integer;Relational key.
.TE
.TABLE "Races Structure"
.KS
.TS
tab(;) allbox;
lb lb lb
lf6 lf6 lf1.
Field;Data Type;Notes
selection_id;Integer;T{
This identifier is unique per horse, not per entry.
T}
selection_name;String;
win_lose;Boolean;Win=True, Lose=False
place_win_lose;Boolean;
bsp;Float64;Betfair Starting Price
place_bsp;Float64;
implied_odds;Float64;1/BSP
ppwap;Float32;Pre-play weighted average price.
morningwap;Float32;Weighted average price of bets before 11AM GMT
ppmax;Float32;Pre-play max price.
ppmin;Float32;Pre-play min price.
ipmax;Float32;In-play max price.
ipmin;Float32;In-play min price.
morningtradedvol;Float32;Trade volume before 11AM
pptradedvol;Float32;Trade volume before the off
iptradedvol;Float32;Trade volume after the off
race_id;Integer;Relational key.
.TE
.TABLE "Runners Structure"
.NHD "Pre-Processing" 2
.PP
I pre-processed my data to include some more fields that
would be useful. Pre-processing fields like this means that
the calculations do not need to be repeated later on. This
is very important and saves a significant amount of
processing time for a dataset as large as this.
.PP
The first field to be added was a normalised probability
field. This is useful as the implied odds given by the
starting price (almost) never sum to be one. The sum of
implied odds given is known as the ``overround''. An
overround greater than one for a back market shows that
there is negative arbitrage and a weighted selection of back
bets is guaranteed to lose money. Since the data for this
project is using the BSP, it can trivially be shown that it
is possible to arbitrage almost every single market. This is
because for BSP, both back bettors and lay bettors are given
the same price. In real terms this arbitrage is actually
impossible to achieve however, as the BSP is not possible to
know before the off, and by betting this way you are certain
to move the market.
.PP
I then added fields for partial pre calculation of the Brier
score and Log-Loss. This is particularly useful as it means
that to determine the scores for a certain subset of races,
they can simply be summed using the groups generated in
the next section. Logit values are calculated to be
used in the logistic regression.
.PP
Returns of a single unit bet are also pre-calculated. The
return is simply 0 if the runner did not win or the BSP if
it did. This is useful for the testing of betting strategies
later. These returns can simply be scaled by bet amount to
find the returns of different sized bets.
.NHD "Categorisation" 2
.PP
All categories are assigned as columns to the data so that
they can be simply referred to by name later on. This makes
it easy to group the data appropriately using the groupby or
pivot_table functions. A list of categories holds the
name of every category as well as a filter for which groups
should be observed. This filter is necessary to remove small
groups that do not provide a lot of data or to make it
easier to analyse categories with a particularly large
number of groupings.
.PP
The groupby and pivot_table functions make it simple to
perform aggregate calculations per group defined this way.
Groupby enables a function to be performed for every group
of the category, such as summing the returns of bets.
Similarly pivot_table enables this but with two different
grouping functions. This is useful when groups need to
perform calculations over a range of values, such as date or
BSP.
.NHD "Mean Returns by Implied Probability" 2
.PP
Runners are grouped by BSP values and the mean win rate for
each value is determined. BSP values given by the dataset
are continuous instead of being representative of the tick
sizes available using the exchange and so they are first
calibrated to align with the closest actual trade value
possible. For each different BSP value, the mean win rate,
the number of observations and the total trade volume are
recorded. When graphed, the tick size is taken
into account so that wider groups are not misrepresented as
being more popular. A Wilson confidence interval is
calculated for statistical significance testing.
.PP
Logistical regression is performed on the entire dataset and
per grouping to determine the slope and intercept of the
plot. Confidence intervals for these values are also
generated for comparison.
.NHD "Test Statistics" 2
.PP
To calculate the Brier and log-loss scores, runners do not
need to be grouped in two different ways. The scores can
simply be calculated as an aggregate of the whole dataset
and per category grouping. Each group has races sampled 1000 times
to determine the expected scores as well as their 95%
confidence intervals.
.NHD "Trading Strategies" 2
.PP
Trading strategies are implemented using a system in which
the strategy function receives a list of available runners
to bet on and returns a ``bet slip''. The bet slip contains
information about which race and runner it chose, as well as
the amount bet and whether or not the selection won. The
amount bet is able to be submitted as either an absolute
value, or as a percentage of the currently held bank value.
.PP
The bet slips are passed to a function which actions the
bets and determines the PNL for each one. It also sorts the
bets over time to generate a timeline of events.
.PP
Each betting strategy is written using vector based
functions. This allows the underlying library (Pandas or
Numpy) to perform many operations in parallel. There are two
primary benefits to this. Firstly, it significantly improves
the readability of the code as the need for looping is
removed. The code is much more representative of what is
actually happening. Secondly, there is a major performance
increase by writing the software in this way.
.PP
The simple strategies naturally have simple implementations.
Every favourite is identified (this is actually
pre-calculated to save time) and bet on. The size of the bet
is either a constant single unit, or for the case of the
hedging strategy, the inverse of the BSP.
.PP
The more advanced strategy has a more complex
implementation. First of all, all races without 2 or 3
places are discarded as determining the Harville odds for
any more than 3 places becomes significantly more complex.
This is not a major issue as less than 1% of races in the
data pay out more than 3 places. The place odds are
determined by using the Harville method to produce the odds
of the horse placing second or third and adding this to the
probability of the horse winning. The Kelly growth criterion
is then calculated to determine the percentage of current
wealth to bet and the bet slip is produced.
.PP
For the purposes of analysis, bets generated by the
strategies are sampled 1000 times. This enables
determination of the expected returns of the strategies
including confidence intervals. If this is not done, the
results of strategies run over the data are simply
individual results and are not comparable.
.NHD "Results, Analysis & Evaluation"
.NHD "Initial Observations" 2
.PP
For most of the groupings, trade volume follows the number
of races as can be seen in Figure
.FN +1 .
This is of course different for the
categorisations of volume (per race) and overround, which
have been specifically broken up into 10 sections of equal
size.
.FIGS groups-count 8i "Number of Races and Trade Volume per Category"
.PP
For the entire dataset, the volume traded appears to be
roughly normally distributed about the mean implied
probability of 0.5. The number of selections however is
positively skew, with significantly more selections being
given a lower implied chance of winning. This shows that
most horses will be considered unlikely to win a race. More
money is traded on a smaller proportion of horses with
greater chances of winning.
.PP
An interesting observation is the somewhat frequent spikes
in prices. These are all observed at the points in which the
market tick size changes.
.[
betextrader
.]
The tick size is the difference between prices that are
allowed to be offered. I have used the tick size to group
selections based on their BSP, as the reported BSP is not
the same as the actual price matched against. The tick sizes
are used to adjust the frequency values in the plots.
.FIGS all-count-vol 5i "Frequency of Count and Volume of BSP Values Across All Races"
.PP
The volumes per grouping tell a largely similar story.
For each different grouping, the distributions are typically
the same as per the whole dataset, except scaled by
quantity. Distance, hour, location, and number of runners
all fit this trend.
.PP
Race number becomes more positively skew as it increases.
This shows that over the course of the racing day, bettors
are more likely to trade on horses with a lower implied
chance of winning. We can see this is not simply due to the
odds being offered as the frequency plot remains almost
exactly the same across all races.
.PP
The volume for race type is another outlier. Handicap
races are massively positively skew while others tend to be
negatively skew. Handicap races are by far the largest race
type in the data set and so have a significant impact on the
overall weighting. It could be the case that on a dataset
without featuring handicap markets, volumes generally tend
to be negatively skew, instead of symmetric.
.PP
For both total pre-play trade volume and overround, the
volume of the market tends to shift towards being negatively
skew as they increase. This trend is particularly pronounced
for pre-play trade volume. As total trade volume increases,
trade tends to centre around horses with a greater chance of
winning. It is so extreme that in the highest bracket of
volume, well over 50% of trades are being made on selections
with an implied probability of winning of over 50%. It could
be speculated that this is signifying an increase in
professional trading activity, where traders try to scalp
prices on popular horses for bigger races. This would
require more research to validate.
.FIGS groups-fl-vol 8i "Frequency of Volume for BSP Values by Category"
.PP
Frequency follows the same trend for all categories except
for pre-play trade volume. All other groups are
positively skew, being scaled relative to their group size.
For trade volume however, the frequency becomes more
negatively skew as the total volume increases. This is
similar to the previous observation for trade volume. As
pre-play trade volume increases, the distribution of
probabilities assigned to horses changes as well. Prices
going down is indicative of greater market confidence
in the favourite horse.
.FIGS groups-fl-count 8i "Frequency of Count for BSP Values by Category"
.NHD "Accuracy" 2
.NHD "Favourite-Longshot Bias" 3
.PP
If the favourite-longshot bias is present within this
sample, I would expect to find that favourites win more
often than implied by their given betting odds. Similarly,
longshots should win less often than implied by their
betting odds. From research done in American markets,
.[
Griffith 1949
.]
.[
ali 1977
.]
I am expecting to find the favourite-longshot bias within my
sample.
.FIGS all-fl 5i "Win Rate Compared to BSP For All Races"
.PP
When plotting expected win rate against true win rate, it
appears as though the favourite-longshot bias is not present
within the entire sample. Figure
.FN
shows this using Wilson confidence intervals. 
If the favourite-longshot bias was present, the mean win rate would
appear greater than the expected win rate for low implied
probabilities and lesser than for high implied
probabilities. This would result in an ``S'' shaped plot.
Almost every confidence interval contains the expected win
rate and so this is the first indication the
favourite-longshot bias is not present.
.PP
A logit regression is employed to determine sample
calibration. If the sample is perfectly calibrated, then the
slope should be one and the intercept zero. The results of
the regression are in Table \n[(\n[tab]+1)].
.KS
.TS
tab(;) allbox;
lb lb lb lb
l n r l.
Parameter;Estimate;95% Confidence Interval;Interpretation
Intercept;-0.0064;(-0.0169, 0.0042);No overall bias
Slope;0.9967;(0.9913, 1.0022);No probability distortion
.TE
.TABLE "Logistic Regression of Implied Probabilities Against Win Rate"
.PP
The logistic calibration model finds no evidence of
systematic miscalibration within the sample. Both the
intercept and slope values are not significantly different
from what should be expected. This indicates that the market
values accurately reflect the outcomes and so there is no
favourite-longshot bias. The logistic regression is
calculated for every grouping of races.
.FIGS groups-logit 8i "Error of Expected Values of Logistic Regression"
.PP
Almost all groups appear to exhibit no significant bias or
probability distortion. There are a few exceptions. Most of
the exceptions are minor, being just outside of the 95%
confidence interval. These are race number 2, hour 17 (5PM),
and the extreme trade volume values. All of these have one
or both of the slope and intercept significantly lower than
their expected values. A slope value less than one is what
would be expected of a sample featuring the
favourite-longshot bias as this shows an undervaluing of
favourites and an overvaluing of longshots. An intercept
less than zero demonstrates systematic overestimation of
winning probabilities. These values could suggest that the
favourite-longshot bias is present, but are not conclusive.
.PP
Bigger variation is found in the highest overround group, 5
furlongs and the NHF (National Hunt Flat) race type. The
overround group features a significantly lower intercept and
the NHF and 5f groups have a significantly lower intercept
and slope. Because the slope is not significantly lower than
1 for the highest overound group, this is not consistent
with the favourite-longshot bias. Instead, this is an
overpricing of all horses.The NHF and 5f groups are
consistent with general overpricing and what would be
expected of the favourite-longshot bias.
.PP
These few counter examples are consistent with what should
be expected for false positives from this sample. With a 95%
confidence rate and 76 different groupings being identified,
3.8 false positives are expected.
.PP
This is a stark contrast from most
previous research, with the only other example I know of a
racing market not exhibiting this bias being the Hong Kong
Jockey Club (a parimutuel market).
.[
exception risk preference
.]
I expect the primary reason for this difference to be the
use of a CDA for price discovery, rather than a parimutuel
system. The CDA encourages greater price discovery and
its format is familiar to those with experience in financial
markets. This could suggest that the composition of the
Betfair Exchange market leans further towards groups of
insiders or professional bettors, rather than normal
punters. Further investigation would be required in order to
determine this.
.NHD "Forecast Test Statistics" 3
.PP
To determine the test statistics, the statistic is
determined first for each individual race and then averaged
across the whole grouping. This is done as we are less
interested in the score as determined per runner as we are
per race. This is because each runner is not an isolated
event, and is instead packaged within a race. Organising by
race prevents extra external factors from affecting the
results. For the data set as a whole, the Brier score is
determined to be 0.0946 and the log-loss is 0.3157. Skill
scores can be used to show that both of these metrics are
better than randomly guessing the likelihood of a horse
winning a race.
.FIGS all_ss_random 5i "Skill Scores of Random Predictions Compared to Market Predictions"
.PP
Figure \n[fig] compares different rates of estimating the
probability of a horse winning. At 1, the model predicts
every horse to win every race with a 100% chance and at 0 it
predicts every horse to not win with a 100% chance. The
comparison makes the differences between Brier and log-loss
extremely clear, as log-loss drops sharply at higher
estimated probabilities due to its greater punishment of
incorrect guesses. Both of these scores show that the market
performs better than random.
.PP
I would expect the skill scores to become greater for groups
of larger sizes. This is because the larger pool would
provide more data for bettors to use to make predictions
with. The sizes of the groups can be found in Figure
.FN +1 .
It would also make sense for some particularly small groups
to have outlying skill scores as they will be more
susceptible to variance.
.PP
To identify accuracy within the different groupings, brier
and log-loss are calculated the same way as before,
accounting for selections within races.
.FIGS groups-acc 8i "Brier and Log-loss Skill Scores by Category"
.PP
Figure
.FN
shows the Brier and log-loss skill scores with 95%
confidence intervals. It
demonstrates that both skill scores are largely
similar.
There are a few occasions where the scores conflict
and one is negative while the other positive. In all
instances of this, the skill scores are both very close to
zero. The difference will be due to slight differences in
the distribution of skill scores as seen in Figure 
.FN -2 .
.PP
Some skill scores appear to be correlated with the size of
the categories or the total trade volume. (Figure
.FN -7 ).
Categories that do appear correlated are: race number,
distance, hour, and location. Race number appears to have
the skill scores negatively correlated with volume, as does
hour. However, distance and location have skill scores that
positively correlate with volume. The contrast between these
categories shows that volume can not necessarily be used as
an indicator of market accuracy.
.PP
Other categories appear to have skill scores unrelated to
the relative volume or race count.The prime example is
number of runners; skill scores increase as the number of
runners does. This behaviour is to be expected because of
our test statistics. A greater number of selections in a
race means that the average probability estimate will
decrease and the number of non winning horses increases.
Number of runners has the greatest range of skill score
values and appears to be the most significant factor in
determining the accuracy of the markets by these metrics.
.PP
Race trade volume and overround both exhibit a behaviour of
having low or negative skill score before sharply rising at
the high end of the categories. Overround is a
representation of the total probability of prices given in
the market. For an overround of 1, all prices add up to a
total probability of one event occurring being 100%.
Odds offered by traditional bookmakers typically have an
overround much greater than one, this is the margin that
they make. Because of this, I would have expected the
accuracy for overround to peak around 1, as at higher and
lower values there are more prices which are explicitly
wrong. The results here contradict that expectation. Trade
volume per race is mostly a measure of race popularity, and
so increased accuracy for the greater trade volumes makes
sense. There is more money in the market and probably a
greater proportion of informed bettors.
.PP
The only category not mentioned thus far is race type. There
seems to be no relationship between the race type and
accuracy. Size and volume of the groups does not impact the
accuracy here, where handicap races (by and far the most
popular) have a similar score to handicap hurdles or nursery
races.
.NHD "Efficiency" 2
.PP
Three betting strategies were trialled in an attempt to
exploit inefficiency within the market. The first two
strategies bet on the favourite horse for every race. The
first one simply bets one unit on every favourite, while the
second bets the inverse of the starting price. The second
strategy makes a weak attempt to ``hedge'' by betting lower
when it is apparent that the probability of winning the bet
is lower. The third strategy is adapted from the technique
used by Hausch et al
.[. (
#
hausch 1981
.]).
.FIGS "all-strats" 5i "Results of Betting Strategies Applied to All Races"
.PP
The results of these strategies when applied to all races
can be seen in Figure
.FN +0 .
Both the favourite betting strategy and the favourite
hedging strategy do not have mean returns statistically
significant from zero.
This is to be expected in an efficient market as the
expected value of the profit of a bet
should be zero.
.PP
The more advanced strategy appears to generate a consistent
profit per bet. Profit is greater than zero within the 95%
confidence interval. This demonstrates a theoretical lack of
efficiency in the market. It is worth remembering however
that this strategy does not take into account price
movements caused by the placement of large bets. This was an
important feature of the original strategy that I have not
been able to replicate for this task. If the market behaved
as if there was infinite liquidity at quoted BSP prices,
this strategy would be effective at generating a consistent
profit.
.FIGS "groups-fav-bet" 8i "Favourite Betting Strategy by Category"
.PP
When applying the two basic strategies to the different
categorisations, no group appears to perform particularly
well or poorly. In Figure 
.FN
the results for the favourite betting strategy are shown.
Unlike the accuracy test statistics, no trends appear to
emerge. None of the groupings have returns significantly
different from zero.
.FIGS "groups-hedge-bet" 8i "Favourite Hedging Strategy by Category"
.PP
The favourite hedging strategy is the same as the favourite
betting strategy in that no patterns can be found in the
results. The returns are also not significantly different
from zero.
.FIGS "groups-harville-bet" 8i "Advanced Betting Strategy by Category"
.PP
Unlike the results for the entire dataset, no grouping has
a return significantly different from zero with the advanced
strategy. This is likely explained by the groupings being
much smaller than the whole sample, and so the confidence
intervals are wider.
.PP
It cannot be said that for any of the
different groupings an inefficiency has been found, though
it could potentially be said of the entire dataset.
.NHD "Legal, Social, Ethical & Professional Issues"
.NHD "Intellectual Property" 2
.PP
To perform this research, I made use of data provided by
Betfair. The page serving this data provides no information
regarding its use. There is a reference to
the directory on one FAQ page,
.[
betfair sp history
.]
which states that the data is available to download.
.NHD "Incentives & Insider Trading" 2
.PP
The availability of prediction markets for certain events
can incentivise negative acts that otherwise would not be
undertaken. At the Super Bowl in 2021, a streaker reportedly
bet $50,000 that there would be a streaker.
.[
super bowl
.]
The availability of perceived easy money from this bet
directly encouraged a man to engage in illegal
behaviour. This was even rationalised (somewhat ironically)
as an arbitrage opportunity. Since the cost of streaking is
fixed (ticket costs, transport and fines), any large enough
bet placed will result in a guaranteed profit assuming the
bettor is able to successfully streak.
.PP
In theory, a prediction market could be engineered in such a
way as to discourage this. If information was efficiently
priced into the market, the possibility of someone going out
of their way to streak for market gain would be reflected
appropriately in the price. As with all prediction markets,
money talks and a large bet on an action signals strong
insider information to the market. It is likely that markets
for betting on the possibility of a streaker are now more
aware of this possibility and are making sure to price it
in.
.PP
Prediction markets do not just incentivise bettors to take
actions that impact the outcome of events. They also
incentivise insiders to bet large amounts on outcomes they
know beforehand. For the purpose of the market, this may be
considered good as it pushes the market towards greater
accuracy. In many scenarios however, this information is
confidential or sensitive. A U.S. soldier was charged with
using classified information about the capture of
Nicol\['a]s Maduro in Venezuela
.[
soldier prediction market
.]
to bet on outcomes of the military operation using
Polymarket.
In the past, sale of state secrets would have to be done
face to face with a foreign agent. Now instead, soldiers are
incentivised to sell out their country publicly.
.PP
Attempts to fix horse races are taken very seriously by the
BHA. A 2023 conspiracy to fix a single race by stopping a horse
from achieving its best possible place resulted in a 9 year
disqualification for the jockey and a 12 year exclusion
order for the owner.
.[
dylan kitts
.]
Investigations and punishments like these enable horse
racing markets to operate in an environment that is
generally believed to be free from corruption. This is
however relevant to a very small portion of highly regulated
prediction markets within the UK. When prediction markets
are expanded to include all manner of events, specialised
investigation boards are impossible to create. It becomes
the job of the courts to regulate behaviour, rather than the
industry being able to self-regulate.
.NHD "Gambling" 2
.PP
The gambling industry profits from habitual gamblers with
addictive personalities. For many people, gambling can
become a significant problem. Most gamblers are essentially
guaranteed to lose money in the long run, causing financial
harm if not managed properly. A bookkeeper fundamentally
makes money by preying on peoples' hopes of winning. By
engaging with gambling markets, you help to enable problem
gambling. Gambling markets are a zero sum game, to succeed
you must take money from someone else. By implementing a
successful strategy, you are more than likely directly
taking money from gamblers with no thought-out system or
genuine racing model.
.PP
Gambling markets look bad when framed this way, but
fundamentally they operate extremely similarly to
traditional financial markets. Huge amounts of people use
the stock market regularly to invest in companies they
believe will be successful, but the process is essentially
the same: a gamble. The primary difference is the social
framing of the two. Big established companies and investors
are seen as sensible and reasonable while gamblers are
considered unreasonable. Of course, the
engagement that people have with these two markets is very
different, even if they operate similarly. When investing in
stocks and shares, most people typically invest in a fund
curated by an institutional investor. This is not guaranteed
to increase in value by any means, but historically has
proven to be successful for most average people. If an
investor begins to choose individual stocks, then they become
less likely to succeed. This is equivalent to typical
gambling practices, where the bettor chooses each individual
horse to bet on.
.NHD "Animal Welfare" 2
.PP
Horse races and some other popular prediction markets (such
as greyhound racing) rely on the use of live animals. In
some cases the animals may become seriously injured or die.
Steps have been taken to reduce this number over time. From
2009 to 2025, incidents of race fatality per 1,000 starts
fell from 2.00 to 1.07 in the US.
.[
jockey club injury database
.]
In the UK, Aintree racecourse announced in 2013 significant
changes to the prestigious Grand National race in the name
of improving safety.
.[
scargill racing post
.]
The maximum number of runners was decreased from 40 to 34.
As well as this, multiple course features were altered
including the lowering of some fences.
.PP
Because of the associated danger, some animal rights groups
have attempted to improve conditions for animals or outright
ban the events from taking place at all. Any changes imposed
may have significant impacts on the markets, as models need
to be recalibrated to account for the different environment.
Additionally, the availability of the market could be
completely jeopardised if events are banned.
.NHD Conclusion
.PP
There has been a surge in popularity of prediction markets
over the last few years as services like Polymarket and
Kalshi have become available. The recent legalisation of
online sports betting in the US has also contributed. Horse
racing is a particularly popular example of a prediction
market and has a large amount of readily available data for
similar repeated events. Results uncovered from racing
market data can be applied to wider financial markets as a
whole, making them valuable research targets.
.PP
This report builds on prior research in horse racing
markets. It surveys the literature for determination of
accuracy and efficiency in those markets. Novel research is
contributed by first of all looking at a CDA market instead
of a parimutuel market (which has typically been the focus
of prior research) and secondly by decomposing the
market into distinct sub-groups to observe.Beyond simply
determining whether the Betfair exchange can be considered
accurate or efficient, I have attempted to find the relative
contributions of different groups of races to this accuracy
and efficiency.
.PP
Accuracy was measured in two ways. The first method compared
betting prices to the expected win rates implied by the
odds. Unlike existing research in the American markets,
.[
griffith 1949
.]
.[
ali 1977
.]
.[
kanto 1992
.]
I found the implied odds to closely match the true observed
odds. For the whole dataset and when decomposed, there was
not any favourite-longshot bias. It appears to be largely
accurate. The second measure of accuracy was two skill
scores: Brier and log-loss. Initial measurements for the
entire dataset demonstrated that the market was more
accurate than randomly guessing winners. When decomposing
into different categorisations of markets, it was found that
the number of runners in a race was the most significant
factor for market accuracy.
.PP
In an attempt to measure efficiency, three different betting
strategies were implemented. Two of them were naive
favourite-betting strategies and the third was a method
adapted from Hausch et al
.[. (
#
hausch 1981
.])
which attempts to derive odds for a horse placing from its
win price. In almost all circumstances, the strategies were
not able to produce returns significantly different from
zero. The one exception is when the advanced strategy was
applied to the dataset as a whole. This potentially
indicates some level of market inefficiency, but the
strategy is not robust enough to confidently claim that for
now.
.NHD "Future Work" 2
.PP
To further the discovery of market accuracy, it would be
beneficial to compare the use of other forecasting methods
to the betting odds. Other methods could include polling and
model-based forecasting. This would help to establish
whether the implied odds given by the markets are actually
the best forecast available. Other forecasting models may
also help to establish a lack of market efficiency. If
another forecast is able to provide better odds estimates
than the market then a strategy could be developed similar
to the one used in this report but with the market win odds
substituted for the forecast odds. This would likely be
identifying a different form of efficiency however, as
information from outside historical prices would be included
in the strategy.
.PP
This report focusses solely on BSP data from the Betfair
exchange, but Betfair also runs its own sportsbook and tote
betting facilities. It may be beneficial to compare the
results found here to data obtained from those alternate
markets. That would enable a direct comparison of market
types as most existing research has been done in the US and
on a different set of races.
.PP
It would be worth exploring different parameters for the
strategies used or different strategies altogether. While I
did experiment with different settings for the strategies, I
have only presented the state I determined to be the best
performing through manual testing. It may be possible that
through a more thorough examination of the different
parameters available, the strategy would succeed in
demonstrating a lack of place market efficiency.
Additionally, improvements on the strategy I adapted have
been published
.[
Hausch 1985
.]
.[
lo 1995
.]
and other strategies have been developed.
.[
bolton 1986
.]
Other strategies may prove successful in demonstrating a
lack of efficiency in the market.
.bp
.XS
References
.XE
.[
$LIST$
.]
.TC
.bp
.SHD "List of Figures"
.LP
.FIGLIST
.SHD "List of Tables"
.LP
.TABLIST
