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
.GE "Pandas" "Python library for data manipulation"
.GE "Parlay" "A single bet which links multiple consecutive wagers"
.GE "Place" "Come first or second in a race"
.GE "Prediction Market" "A market that facilitates bets on the outcomes of future events"
.GE "Python" "Programming Language"
.GE "Show" "Come first, second or third in a race"
.GE "Tipster" "Professional who publishes betting guides"
.NHD Introduction
.PP
Horse racing markets have been academically studied as
valuable research targets since at least the 1940s.
.[
Griffith odds
.]
Racing markets are good to study for a few reasons. For one,
they involve a large number of bettors. The bettors have
varying levels of expertise ranging from absolutely zero to
professional punters. These markets also closely mirror more
``traditional'' financial markets, and so research involving
racing can be extrapolated out to the wider context of
finance. Betting contracts are similar to options contracts
in that they have a set expiry time and a payout determined
by an external factor. The facets of horse racing make it an
ideal ground to examine the efficient markets model.
.[
Snyder 1978
.]
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
Existing research into 
.NHD "Motivation" 2
.PP
I was motivated to research this area due to the recent
popularity of prediction markets as a tool for forecasting.
As well as this, the regulation surrounding prediction
markets is currently heavy within the UK. This is because
they fall under the jurisdiction of the Gambling Commission.
Many of the newly popular prediction market sites are
currently illegal to use within the UK, but established
exchanges such as Betfair are completely legal. Another
interesting factor of being classed as gambling means that
winnings within the UK are not taxed. This means that an
equivalent strategy within a gambling market and the stock
market may prove ultimately more profitable in the gambling
market as the only fees to be paid are commission to the
exchange. In the case of Betfair, commission can be even
less than just 2% of successful bets.
.NHD "Scope" 2
.PP
This project observes a variety of different
classifications of horse races. Each classification type
is examined to see if there is any link between the
classification of a horse race and its related betting
market's accuracy and efficiency. In order to achieve this,
a database of horse races is compiled using data from the
Betfair exchange.
.NHD "Aims" 2
.PP
The primary aim of this project is to determine which
factors are most significant in influencing the accuracy and
efficiency of horse racing markets. There are many different
ways to classify horse races including but not limited to
time, distance and race type (Hurdles, Chase, Handicap,
etc.). Additionally, races can be classified by their
market factors such as trade volume or overround.
.PP
Accuracy of the market is a measure of how well the listed
odds represent the true odds of a horse winning. In a market
that was 100% accurate, the odds given would provide a $0%$
return on all winning bets. To determine the accuracy of the
odds, I will be comparing various test statistics such as
the Brier score and Log-Loss.
.PP
An efficient market is one in which prices are said to
``fully reflect'' all of the available information and are
shown to be
.I weak-form
efficient when this can be demonstrated using an information
set made exclusively of historical price data.
.[
Fama 1970
.]
A systematic betting strategy using historical pricing data
that is able to generate a consistent profit demonstrates a
lack of
.I weak-form
efficiency within a market.
.[
Hausch 1981
.]
In order to determine which groups of races are
.I weak-form
efficient, I shall apply various betting strategy profiles
to them in isolation. Some of these strategies will simple and some will be adapted from previous work.
.NHD "Objectives" 2
.BP
Perform a systematic review of existing research to
determine existing standards for market accuracy and
efficiency. Identify whether racing markets are generally
considered to be accurate or efficient.
.BP
Obtain an appropriate dataset for research.
.BP
Categorise the data into potentially useful groupings.
.BP
Examine each grouping to determine whether or not they fit
the previously identified definitions of accurate or
efficient.
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
a multiple class classification problem:
.EQ
LL = - sum from t=1 to N o sub t log ( f sub t )
.EN
where $f sub t$ is the forecast probability, $o sub t$ is
the actual outcome ($0$ if did not happen or $1$ if did) and
$N$ is the number of forecasts. A horse race only has one
winner and so for a single race win market, it can be shown that
$LL = - log ( f sub "winner" )$.
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
of accuracy for betting predictions. Because every non
winning horse contributes the same score of zero, it appears
to me that Brier score is more appropriate for general
ranking of horse race win forecasting as it incorporates
more information from the losing horses.
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
Another study found prediction markets to outperform a
survey when used to predict the reproducibility of studies
published in psychology journals.
.[
reproducibility
.]
.PP
Because of the demonstrated favourite-longshot bias in
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
.PP
Strijbis and Arnesen
.[
#
variance markets
.]
find that the setup of the market influences accuracy
the most, while features of the event and the market's
participants have an insignificant impact. Prediction
markets require the right incentives in order to produce the
most accurate and up to date forecasts.
.[
designing markets prediction
.]
Markets will also suffer if a group of insiders are able to
influence the outcome. If the goal of the market is to
produce the best forecast, then it must incentivise
immediate truth-telling instead of deception. Pennock
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
by Markowitz. To follow this study, Ali
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
how rigourously they can be described as efficient.
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
Betfair.
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
similarly a wager of multiple outcomes, however can be
constructed from multiple seperate bets with the winnings
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
bets cannot be bought and sold at different prices.
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
betting habits remaining the same), it would be certainly
impossible to describe the market as informationally
efficient. Snyder also demonstrated that this bias exists
among betting experts (or ``tipsters'') which makes it seem
also unlikely that the market is
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
.NHD "Objectives, Specification & Design"
.NHD "Methodology & Implementation"
.NHD "Data Acquisition" 2
.NHD "Betfair Exchange UK Horse Racing Win Markets" 3
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
selection. It is also significantly larger,
containing data from as far back as 2008, compared to 2016
with the other set.
.PP
I produced a Python script to automatically download all of
the UK win market files from this second dataset and process
them to be used within
Pandas. The script saves the data to binary files for quick
retrieval. It makes sure to not redownload files it has
already obtained so it can easily update the existing
database. As well as this, it automatically slows down when
rate limited to ensure that all files are downloaded.
.PP
The final dataset contains over 170,000 races from 24,000
different events in the UK, starting from September 1st
2008. There are over 1.5 million entries for selections
within the races. This data is formatted into three
different tables: events, races and, runners.
.NHD Events 4
.TS
tab(;) allbox;
lb lb lb
lf6 lf6 lf1.
Field;Data Type;Notes
event_id;Integer;Unique identifier provided by Betfair
location;String;
event_date;Datetime;
.TE
.NHD Races 4
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
.NHD Runners 4
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
.NHD "Hong Kong Jockey Club" 3
.PP
I also downloaded data from the website of the Hong Kong
Jockey club in order to compare it against the UK market.
This was done by scraping their webpages for historical
racing events. Ultimately it proved that this data was not
particularly useful, however. The available data I was able
to collect only went back to 2022 and the reduced number of
racecourses operated by the HKJC meant that the number of
races was only around 2000, compared to the 170,000+ of the
UK dataset.
.NHD "Software Development" 2
.PP
I decided to use Python through Jupyter Lab to write and run
my software as it is what I had the most experience with for
statistical analysis.
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
.PP
The first naive strategy simply bets one unit of currency on
the favourite (runner with the highest implied probability)
in every race. Due to how I set up the strategy
implementation, this is incredibly simple as it just
involves grouping the runners per race and then submitting a
bet of one. If the favourite horse is given odds lower than
its real odds, then this strategy should consistently make
money. Breaking even is an implication of the favourite
being accurately priced over time.
.PP
The other naive strategy is similar to the first, but
instead of betting a constant amount on each favourite, it
attempts to ``hedge'' the bet by betting lower for worse
odds and higher for better odds. If the prices for the
favourite horse are accurate, then this strategy should
consistently break even.
.NHD "Learning Strategy" 4
.PP
I created a very simple learning strategy that uses a
rolling average to estimate the current likelihood of the
favourite horse winning. It assumes the current average of
win rate of the favourite horse to be the true win rate and
uses the Kelly Criterion to size a bet. That is:
$f* = ( bp - q ) / b$
where $f*$ is the fraction of wealth to bet, $p$ is the
likelihood of the bet winning, $q$ is $1-p$ and $b$ is the
proportion of wealth won if successful.
.[
Thorp 2006
.]
It is worth noting that this does not account for the impact
that a bet will have on the market.  This is a very simple
strategy which does not use any information outside of the
historical prices. If this strategy is able to make a
profit, it indicates that the market is not
.I weak-form
efficient.
.NHD "Results, Analysis & Evaluation"
.NHD "Accuracy" 2
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
.bp
.XS
References
.XE
.[
$LIST$
.]
.TC
