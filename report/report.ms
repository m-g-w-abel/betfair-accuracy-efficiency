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
This is the abstract.
.BP
A brief introduction to the objectives.
.BP
A brief description of the main work.
.BP
A brief description of the contributions, major findings,
results achieved and conclusion.
.AE
.SH
.SHD Acronyms
.GE BSP "Betfair Starting Price"
.GE CDA "Continuous Double Auction"
.GE CLOB "Central Limit Order Book"
.GE DPM "Dynamic Pari-Mutuel Market"
.GE HKJC "Hong Kong Jockey Club"
.GE IP "In-play (after the off)"
.GE PNL "Profit and Loss"
.GE PP "Pre-play (before the off)"
.GE WAP "Weighted Average Price"
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
.NHD Introduction
.PP
As of late, prediction markets have become a hot topic.
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
They do have one key difference, in that the lifetime of a
bet is finite, and the lifetime of a stock is not.
.[
Thaler ziemba 1988
.]
In this way, they can be considered similar to binary
options contracts, where there are two different payoff
values dependant on the result of an external event. The
difference between options and wagers here is that the value
of an option is dependant on the value of an underlying
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
must be priced differently.
.PP
In wider financial markets, it is typical for index funds to
be selected from a certain subsection of securities. For
example the S&P 500 tracks the top 500 stocks in the
United States and the FTSE 100 tracks the top 100 companies
on the London Stock Exchange. Both of these are examples of
funds limited to investments within a ceratin region.
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
Another interesting factor of being classed as gambling
means that winnings within the UK are not taxed. This means
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
given by $1 smallover odds$.
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
form bets with one another. Betfair does this using a CLOB,
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
"starting price" betting. Bettors who use the starting price
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
where $f sub t$ is the forecast probability, $o sub t$ is
the actual outcome ($0$ if did not happen or $1$ if did) and
$N$ is the number of forecasts.
In this
system, a perfect forecast is given a score of zero. This
can only be achieved if the forecast guesses with 100%
certainty every time. 
Ranked Probability Score
.[
epstein 1969
.]
is an extension of the Brier score to support multiple
outcomes Ranked Probability Score with binary outcomes can
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
where $f sub t$ is the forecast probability, $o sub t$ is
the actual outcome ($0$ if did not happen or $1$ if did) and
$N$ is the number of forecasts.
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
of accuracy for betting predictions.  Both Brier scores and
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
Later in this report, I will explain and demonstrate some
betting strategies, however they are only relevant to the
efficiency of the market. This is a prime example of what
Wunderlich and Memmert explain. The strategies can be
successful, even without predicting anything to do with
horse racing.
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
to hide their beliefs about the probability of a win. A CDA
(the primary mechanism of the Betfair Exchange) encourages
price discovery over time but may still incentivise
participants to to lie about their true valuation. Since the
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
causing the discrepancy in prices.  Subsequent research has
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
Comparitively little exists for markets using a CDA such as
Betfair. This makes this report particularly interesting as
a way to compare parimutuel markets with a CDA. It also
means that the work done here is potentially has greater
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
similarly a wager of multiple outcomes, is
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
and the parlays is not statistically significant.  In a
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
data and so attempts to demonstrate a lack of
.I "weak form"
efficiency.  They argued that their system successfully
exploited a market inefficiency and was able to generate a
consistent profit. With a follow up paper, Hausch and Ziemba
.[
#
hausch 1985
.]
greatly improved the system making it more profitable
and applicable to any racetrack. They also demonstrated how
more people using the system would ultimately cause the
market to become efficient.
.NHD "Methodology"
.NHD "Data Source" 2
.PP
Historical odds pricing data is typically very difficult to
find if not impossible from most bookmakers. This was a
significant factor in choosing to use prices from the Betfair
exchange. Betfair provides historical betting data at multiple
levels of resolution including a generous free tier. The
data provided in this set is structured like exchange data,
with multiple entries per race documenting changes in prices
over time. For my purposes, this is beyond what I need as I
am only interest in the BSP and not the price evolution.
I used this dataset at first but found this is beyond what I
need for my purposes, as I am only interested in the BSP and
not the price evolution.
.PP
Betfair also provides a directory of starting price files
and allows users to filter them by location and market type.
This dataset contains some useful information not included
in the free tier of the standard historical data files such
as trade volume and minimum and maximum prices for each
selection. It is also significantly larger, containing data
from as far back as 2008, compared to 2016 with the other
set. In total, the dataset contains odds data for over
170,000 win markets in the UK. This is the dataset I chose
to use as it was the most comprehensive and most simple to
use. It is worth noting that the market mechanism for the
Betfair exchange is different from the typical parimutuel
markets explored in other research and so results using this
dataset can not be directly compared, but they are still
worth using to explore the impact of a different market
type.
.PP
I had originally also considered using multiple datasets to
compare different markets. To this end, I obtained a dataset
from the Hong Kong Jockey Club but it was not sufficient for
this project as it only contained information from 2,000
races.
.NHD "Classification" 2
.PP
I decided on a few different classifications to compare
between. These were decided mostly due to
what was available within my dataset. I wanted to get a
varied range of groupings as it was not clear which, if any
would produce interesting results. For external factors, I
chose: race number, distance, hour of day, race type,
location, number of runners. Number of runners could also
potentially be considered a market factor, as it affects the
number of possible selections to choose from within the
market. The market factors are pre-play trade volume and
overround.
.NHD "Accuracy" 2
.PP
As a baseline, the existence (or non-existence) of the
favourite-longshot bias within the dataset should be
established. This is important as it is an expected market
inaccuracy consistently found across the literature. A
change in the bias could indicate different sub groups of
bettors within horse racing with different utility
estimates. 
To look for this,
I will plot the implied probabilities given by the odds
against the true (observed) probabilities. This will be a
clear indicator of accuracy, as these two values should be
the same for an accurate market.
.PP
Brier scores and log-loss will also be used. With the entire
dataset given as a benchmark, the groups produced by the
different classifications will be compared to see if they
are to be considered more or less accurate by these test
statistics. These values give a more concrete value to
compare accuracy between.
.NHD "Efficiency" 2
.PP
Due to my choice of dataset, I do not have an opportunity to
compare prices of exotic bets to parlays. This means that
the most straight forward way to test for market efficiency
is to subject the market to various betting strategies. The
existing research for this is done in the context of
parimutuel betting, where it is known how exactly a bet will
change the odds within the market.
.[
hausch 1981
.]
.[
hausch 1985
.]
Because of this, I will not be able to employ the same
strategies, beyond the simplest of betting the same amount
on favourite horses.
.PP
The first strategy I will implement simply bets one unit on
the favourite horse. This is one of the simplest and most
widely implemented strategies. As a slight twist on this, I
will implement a similar strategy where the size of the bet
is determined by the implied probability of the odds price.
This is intended to hedge potential losses from horses with
a lesser chance of winning.
.PP
I will also test a slightly more involved strategy. This
strategy will take a running average of how likely it is
that the favourite horse has won and take this value to be
the true probability of the favourite horse winning. The
probability will be plugged into the Kelly Criterion in
order to determine the size of a bet. That is:
$f* = ( bp - q ) / b$
where $f*$ is the fraction of wealth to bet, $p$ is the
likelihood of the bet winning, $q$ is $1-p$ and $b$ is the
proportion of wealth won if successful.
.[
Thorp 2006
.]
While this strategy will help identify market
inefficiencies, it is not pratical for real use as it does
not take into account how placing a bet will move the
market. Since this strategy relies only on historical price
data, it intends to demonstrate a lack of
.I "weak form"
efficiency.
.NHD "Implementation"
.NHD "Data Acquisition" 2
.PP
I produced a Python script to automatically download all of
the files found in my dataset and process them to be used
within Pandas. The script saves the data to binary files for
quick retrieval. It makes sure to not redownload files it
has already obtained so it can easily update the existing
database. As well as this, it automatically slows down when
rate limited to ensure that all files are downloaded.
.PP
Another script transforms the flat file structure into a
relational one. The relational structure avoids duplicating
data and keeps unrelated information separate.  This data is
formatted into three different tables: events, races and,
runners.
.KS
.NHD Events 3
.TS
tab(;) allbox;
lb lb lb
lf6 lf6 lf1.
Field;Data Type;Notes
event_id;Integer;Unique identifier provided by Betfair
location;String;
event_date;Datetime;
.TE
.KE
.KS
.NHD Races 3
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
race_time;Datetime;
distance_f;Integer;Furlongs are one eigth of a mile long.
race_no;Integer;T{
Races are given numbers indicating their sequence position within an event.
T}
event_id;Integer;Relational key.
.TE
.KE
.KS
.NHD Runners 3
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
bsp;Float64;Betfair Starting Price
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
.KE
.NHD "Software Development" 2
.PP
I decided to use Python through Jupyter Lab to write and run
my software as it is what I had the most experience with for
statistical analysis. Python also features extensive
libraries for data analysis and statistics. Particularly
useful in this project is the Pandas library, which provides
a significant amount of functionality for working with
structured data.
.NHD "Data Structure and Statistics" 3
.NHD "Pre-Processing" 4
.PP
I pre-processed my data to include some more fields that
would be useful. Pre-processing fields like this means that
the calculations do not need to be repeated later on.
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
they can simply be summated using the groups generated in
the next section.
.NHD "Categorisation" 4
.PP
Given the available data from my dataset I decided upon a
list of ways to categorise the horse races: race number,
distance, hour of day, pre-play trade volume, race type
(handicap, hurdles, etc.), location, number of runners and,
overround. To do this I produced a list containing these
different classifications of races created using the
.ft 6
groupby
.ft
method in Pandas. The
.ft 6
groupby
.ft
method makes it easy to perform aggregate calculations per
group created through the method. This means that a function
such as
.ft 6
sum
.ft
will be ran per group, instead of for all data in the
DataFrame.
.NHD "Trading Strategies" 3
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
.NHD "Naive Strategies" 4
.NHD "Learning Strategy" 4
.NHD "Graphing" 3
.PP
To plot my results, I used the program Gnuplot. Python comes
with its own plotting utilities (in the form of Matplotlib),
however I was not satisfied with their capabilities as I
found it awkward to position elements to my liking. It was
also difficult to produce a format easily embeddable within
my document preparation system (Groff). The workflow of
producing output datafiles in Python and then producing
plots through Gnuplot in Jupyter was extremely
straightforward.
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
An interesting observation are the somewhat frequent spikes
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
trade tends to center around horses with a greater chance of
winning. It is so extreme that in the highest bracket of
volume, well over 50% of trades are being made on selections
with an implied probability of winning of over 50%. I
believe that this is signifying an increase in professional
trading activity, where traders try to scalp prices on
popular horses for bigger races.
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
going down due is indicative of greater market condfidence
in the favourite horses.
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
When observing the entire dataset, it is clear that the
favourite-longshot bias is not present. The mean win rate
closely tracks the expected win rate at all implied
probabilities. If
the favourite-longshot bias was present, the mean win rate would
appear greater than the expected win rate for low implied
probabilities and lesser than for high implied
probabilities.  Variance within the higher expected win
rates can be
largely explained by them making up a representatively small
part of the sample.
.FIGS groups-fl-mean 8i "Win Rate Compared to Implied Probability by Category"
.PP
Similarly, for all categories it appears there is no sign of
the favourite-longshot bias. They all have greater variance,
but this is simply due to a smaller sample size.
.PP
This is a stark contrast from most
previous research, with the only other example I know of a
racing market not exhibiting this bias is the Hong Kong
Jockey Club.
.[
exception risk preference
.]
I expect the primary reason for this difference to be the
use of a CDA for price discovery, rather than a parimutuel
system. The CDA is encourages greater price discovery and
its format is familiar to those with experience in financial
markets. This could suggest that the composition of the
Betfair Exchange market leaning further towards groups of
insiders or professional bettors, rather than normal
punters.
.PP
If this is the case, then there may well exist a
favourite-longshot bias in the odds provided by normal UK
sportbooks or tote operators. Typically, this would be an
arbitrage opportunity as the two markets are offering
differing prices on the same outcome. There are however a
few points that negate any usefulness of this arbitrage for
someone attempting to exploit it. First of all, traditional
sportsbooks do not allow a bettor to lay a bet which is
typically necessary for an arbitrage opportunity. You could
instead bet on all other winning outcomes to replicate the
lay bet, but this will encounter the next problem. Bookmaker
overround is probably far too significant to overcome,
requiring the bettor to have an edge of well over 20% to
actually make any money. Betting on multiple selections
causes the impact from overround to accumulate. The most
signficant issue is not to do with the numbers, instead it
is the fact that almost all bookmakers will simply ban you
from using their service for attempting to do this.
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
determined to be 0.0951 and the log-loss is 0.3167. Skill
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
provide more data for for bettors to use to make predictions
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
Throughout every category, both skill scores are largely
similar. Figure
.FN
compares the sill scores for every category.
There are a few occasions where the scores conflict
and one is negative while the other positive. In all
instances of this, the skill scores are both very close to
zero. The difference will be due to slight differences in
the the distribution of skill scores as seen in Figure 
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
the relative volume or race count.  The prime example is
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
total probability of one event occuring being 100%.
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
.NHD "Legal, Social, Ethical & Professional Issues"
.BP
Use of live animals?
.BP
Profit Derived from gambling losers
.BP
Similarity to stock market
.BP
legality of companies betting
.NHD Conclusion
.NHD "Future Work" 2
.BP
compare polling/other forecasting?
.BP
compare betfair tote/bsp values from just bsp bets
.bp
.XS
List of Figures
.XE
.XS
List of Tables
.XE
.XS
References
.XE
.[
$LIST$
.]
.TC
