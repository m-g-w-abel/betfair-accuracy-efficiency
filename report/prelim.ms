.so macros.ms
.TL
Project Preliminary Report
.AU
Matthew Abel
.NH
Introduction
.PP
Within this project I intend to explore the relationship
within horse betting markets between race number and market
accuracy. For a given horse racing event, there will be a
number of races throughout the day (typically 7 or now in
some cases 8). It has been told to me as somewhat of a
gamblers' folk tale that prices tend to be less accurate as
the day continues, as gamblers move towards riskier options
in hopes of recouping earlier losses. This behaviour would
imply that betting on the favourite for the final race would
give you a greater expected value than betting on the
favourite for the first race.
.PP
I have identified 2 primary datasets that I can use for this
research. Both are provided by popular betting exchange
service Betfair, where users are able to back and lay bets
against other users on the platform. Betfair provides a
large dataset through their historic data program which I
have been using already to begin this research, however I
have come across another dataset provided by them which is
likely more appropriate moving forward. The dataset I have
been using features an enormous amount of datapoints
including price movements and closely follows the internal
API structure used to place bets. The other dataset is more
slimmed down, providing only information collated after the
races have occured. Importantly too, the other dataset has
data from a much greater time period and contains
information (such as market volume) which is only available
at a cost for the original dataset. The most important part
of both these datasets is the start price, which is an
aggregation of all bet demand when the race starts.
.PP
Other sources that may be useful are publications with
predictions such as Racing Post or Timeform. Often these
sources don't just publish which horses they believe are
most likely to win, but also what they believe that the
betting odds will be for them on the racecourse.
.PP
To look into this potential factor, I will apply multiple
different metrics of accuracy. Probably most important is
the Brier score, which measures the accuracy of odds
compared to the real outcome. Similarly, log-loss can be
used to evaluate the effectiveness of the market in
producing accurate prices. Another factor to look at would
be how the favourite-longshot bias changes from race to
race. This is an observation in how punters typically prefer
to bet on outsiders rather than the favourite. All of these
factors can be cross-compared with other important data
points such as the liquidity, earlier prices, price ranges,
race length and going. I can use the Kruskal-Wallis test to
determine if the differences per race are statistically
significant. I think it may also be worth comparing some
basic betting strategies and seeing how they perform.
.NH
Background Material
.PP
There is not much (if any) existing research into this
particular feature that I can find. However, there is a
significant amount of other research into horse racing
markets.
.PP
The favourite-longshot phenomena in which unfavourable
horses are often highly overweighted was first published by
Griffith.
.[
#
Griffith 1949
.]
This has been greatly analysed from a psychological
perspective, with many arguing that this is a preference for
risky bets among gamblers.
.[
Weitzman 1965
.]
.[
Ali 1977
.]
.[
Quandt 1987
.]
.[
Kanto 1992
.]
Others, such as Golec and Tamarkin
.[
#
Golec 1998
.]
or Snowberg and Wolfers
.[
#
Snowberg 2010
.]
suggest different reasons including a preference for skew
rather than risk or simply a misperception of actual
probabilities. None of these studies however examine how the
favourite-longshot bias evolves over the course of a race
day.
.PP
An important area of relevant research is that of market
efficiency. Work in this area provides useful groundwork to
model what market efficiency looks like in betting markets
and using these methods will enable me to compare market
efficiency (or price accuracy). There is relevant research
from Snyder,
.[
#
Snyder 1978
.]
Hausch et al
.[. (
#
Hausch 1981
.]),
Asch and Quandt,
.[
#
Asch 1987
.]
and Busche and Walls
.[
#
Busche 2000
.]
just to name a few to start with.
.NH
Schedule
.LP
Tasks must be completed by:
.BP
May 22 - Data acquisition
.BP
Jul 3 - Software development
.BP
Jul 10 - Software testing
.BP
Jul 31 - Written analysis & evaluation
.BP
Aug 3 - Final deadline
