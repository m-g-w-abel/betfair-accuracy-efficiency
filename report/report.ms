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
.NHD "Betfair & Bookmaking" 3
.PP
There are two typical forms of betting markets available for
horse racing generally: fixed-price bookmakers and tote
operators.
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
.PP
A tote (otherwise known as parimutuel betting) is a system
in which money for all bets is placed into a pool and then
distributed to winning bettors. This means that bettors are
not given an exact payout quote at the time of purchasing
their bet, but they may be given an estimate. Tote operators
make money by taking a certain percentage of the pool for
themselves, typically called the ``track take''.
.PP
Betfair is a UK based company which operates a betting
exchange service. A betting exchange is different from a
typical bookmaker in that instead of the operator quoting
odds prices or offering a tote service, it allows users to
form bets with one another. Betfair does this using a CLOB,
allowing users to either back (long) a bet or lay (short)
one.
.NHD "Background Theories"
.NHD "Main Results"
.NHD "Objectives, Specification & Design" 2
.NHD "Methodology & Implementation" 2
.NHD "Data Acquisition" 3
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
