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
.SHD Nomenclature
.GE BSP "Betfair Starting Price"
.GE CLOB "Central Limit Order Book"
.GE HKJC "Hong Kong Jockey Club"
.NHD Introduction
.NHD "Project Aims & Objectives" 2
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
to them in isolation. Some of these strategies will be
simple and some will be adapted from previous work.
.NHD "Background & Literature survey" 2
.NHD "Literature Survey" 3
.NHD "Bookmaking" 3
.NHD "Fixed-Price Odds" 4
.PP
A fixed-price bookmaker will quote prices (odds) at which
they are willing to sell bets at. If the bet pays out, the
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
.NHD "Parimutuel Odds" 4
.PP
A tote (otherwise known as parimutuel betting) is a system
in which money for all bets is placed into a pool and then
distributed to winning bettors. This means that bettors are
not given an exact payout quote at the time of purchasing
their bet, but they may be given an estimate. Tote operators
make money by taking a certain percentage of the pool for
themselves, typically called the ``track take''. These types
of bets are typically facilitated by the track operator
themselves, such as the HKJC.
.[
HKJC Pari-mutuel
.]
.NHD "Betfair" 4
.PP
Betfair is a UK based company which operates a betting
exchange service. A betting exchange is different from a
typical bookmaker in that instead of the operator quoting
odds prices or offering a tote service, it allows users to
form bets with one another. Betfair does this using a CLOB,
allowing users to either back (long) a bet or lay (short)
one. Within the context of a horse race, this means that the
win market (where bets are payed out only if the horse
places first) features a different asset for every selection
(runner) in the race. They can be thought of as largely
analogous to options contracts, where the layer agrees to
pay the backer a certain sum of money dependant on the
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
.NHD "Background Theories"
.NHD "Main Results"
.NHD "Objectives, Specification & Design" 2
.NHD "Methodology & Implementation" 2
.NHD "Data Acquisition" 3
.NHD "Betfair Exchange UK Horse Racing Win Markets" 4
.PP
Historical odds pricing data is typically very difficult to
find if not impossible from most bookmakers. This was a
signifcant factor in choosing to use prices from the Betfair
exchange. Betfair provides historical betting data at multiple
levels of resolution including a generous free tier. The
data provided in this set is structured like exchange data,
with multiple entries per race documenting changes in prices
over time. For my purposes, this is beyond what I need as I
am only interest in the BSP and not the price evolution. I
used this dataset at first, but found one better suited to
my uses.
.PP
Betfair also provides a directory of starting price files
and allows users to filter them by location and market type.
This dataset contains some useful information not included
in the free tier of the standard historical data files such
as trade volume and minimum and maximum prices for each
selection. This dataset is also significantly larger,
containing data from as far back as 2008, compared to 2016
with the other set.
.PP
I produced a Python script to automatically download all of
the UK win market files and process them to be used within
Pandas. The script saves the data to binary files for quick
retrieval. It makes sure to not redownload files it has
already obtained so it can easily update the existing
database. As well as this, it automatically slows down when
rate limited to ensure that all files are downloaded.
.NHD "Hong Kong Jockey Club" 4
.PP
I also downloaded data from the website of the Hong Kong
Jockey club in order to compare it against the UK market.
This was done by scraping their webpages for historical
racing events. Ultimately it proved that this data was not
particularly useful, however. The available data I was able
to collect only went back to 2022 and the reduced number of
racecourses operated by the HKJC meant that the number of
races was only around 2000, compared to the 175,000+ of the
UK dataset.
.NHD "Software Development" 3
.NHD "Results, Analysis & Evaluation" 2
.NHD "Accuracy" 3
.NHD "Efficiency" 3
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
