
[Applause]
thank you very much I want to thank
um Yaniv and all the organizers and NSF
and BSF for bringing us all here finally
in person uh it feels especially great
to be in this very special place in
Israel after years of
pandemic zooms
so my lab builds computational models
fed with parameters all extracted from
experimental data in order to test
Neuroscience theories and I will
illustrate this approach with a very
famous region of the brain the mammalian
hippocampus
so the mammalian hippocampus has long
been involved in the consolidation and
retrieval of episodic memories for
example you go to a conference after a
few years you see a colleague and you
retrieve in your mind the experience of
having met that colleague at a
conference maybe five years prior
and this process of episodic memory in
cognitive science is known to const
consist of three distinct processes
pattern separation pattern completion
and pattern comparison and the anatomy
of the Circuit of the hippocampus has
been known for over a hundred years and
it's conveniently divided in three
synaptic stations the dantajar ca3 and
ca1 and according to textbooks each of
those is responsible for the performance
of one of those so the dental Gyros for
pattern separation where you decompose
the experience in individual elements
such as the identity of a given
colleague from a crowded scene pattern
completion where you use that clue and
that cue to retrieve a complex memory
from your past and pattern comparison in
ca1 where you analyze both the
differences and similarities between
those experiences and particularly
pattern completion in ca3 has been
hypothesized to occur thanks to the very
dense recurring collaterals between the
axons and the dendrites in this region
and has been formalized by seminal
mathematical models especially the
hopefield net but the question remains
does this function or how can this
function occur in a biologically
realistic circuit or in a real Circuit
of biophysically complex neurons and
synapses
so in order to answer that question we
built a model in silico of ca3 in the
mouse in real scale with approximately
80 000 neurons each of the neurons
corresponded to a type of neuron one of
eight types which were morphologically
and chemically identified the principal
cell of this region is a pyramidal cell
which is excitatory and there are seven
known types of inhibitory gabaergic
cells each with their own specific
connectivity and function in the circuit
and for each of these neuron type we
have the input output function which is
model with a dynamical model system
called easy K which neurons quantitative
probabilities of connection as well as
experimentally fitted synaptic
physiology for the the communication
between neurons using the Orthotics
marker and formulas and finally we have
long-term plasticity in the form of
habian symmetric stdp between excitatory
synapses so all the parameters were
taken from a very powerful Open Access
resource called hippocampum.org which is
based on over 50 000 experiments where
all the parameters are accessible online
and the simulations were run on
graphical process units
using the environment called carlsim and
when I say we I really mean my wonderful
PhD student Jeffrey kopzik who will
graduate next year and will be on the
postdoc Market he comes greatly
recommend did
so to summarize the the model has eight
neuron types 51 connection between
neuron types and when you implement a
network it boils down to 80 000 neurons
250 million synapses and the number of
parameters uh experimentally determined
is 386 to illustrate the process of what
those parameters are let me take the
example of just two neuron types in this
a ca3 pyramidal cell and the ca3 basket
cell an inhibitory cell type so there
are about 75 000 of the first and 115 of
the second in a mouse and for each of
those you have the probability of
connection in this case both between
pyramidal and pyramidal between
pyramidal and basket and vice versa
as well as the excitability of the
neurons or the response of the neurons
to a given synaptic stimulus that is
fitted to the experimental data and
lastly the synaptic physiology of how a
neural respond to a series of spikes and
this is example the excitatory
postsynaptic currents in the basket cell
and the excitatory in the inhibitory
postsynaptic current in the pyramidal
cell
so when you put together this network in
real scale and you let it go it actually
behaves in a very interesting way there
are chaotic Dynamics which are stable
the network never turns off it never
saturate in this case it's an example of
about 700 or so neurons with a roster
each dot in the upper panel is a spike
and the firing patterns that the neurons
are going to are reflective of their in
Vivo patterns so pyramidal cells have
very sparse firing basket cells and
exotonic cells are fast spiking and the
individual voltage traces of those
example example neurons in this case
also are reflective of activity and this
was work that we published last year in
cognitive computation so we're in well
positioned with this toy model to then
say can we now study pattern completion
so this is the seminal theory of
assembly formation so the way that the
protocol works is that you start with
all these in this case 75 000 pyramidal
cells and their connectivity and you
take a random set of in this case 300 we
started with that number we declared
that as an assembly and during training
we activate together those 300 cells in
systematic ways
and after a few training sessions we
test it by as an example only activating
a subset of the cell assembly and see if
the rest of the assembly reconstructs
so in order to use again biological
inspiration we do the training locked
into Theta rhythms which is one of the
natural rhythms of the hippocampus so
each assembly is trained at every Theta
so this is about four times a second
and then during testing also is tested
in Theta within a Theta if you look at
the bottom right panels the
co-activation of subsets of neurons in
the cell assemblies occurs during gamma
Cycles so at higher frequencies again
inspired by the biological data and if
you look at the top right panel which is
the Theta testing regime in this case we
only activated half of the Assembly of
each of three assembly and in all cases
the non-activated neurons respond to
that queue
so how can we quantify that
systematically
the first metric is really basically
doing what I just described which is you
only activate part of the assembly and
you measure pattern completion by
looking at whether the non-activated
neurons within the assembly behave more
like the activated ones or behave like
the non-assembly neurons and you can
express that mathematically using a
z-score
another alternative is to use a
different protocol which is also
sometimes called pattern completion to
avoid confusion we call that pattern
reconstruction
and this is a protocol that is used for
example in the experimental lab of Peter
Jonas in Austria where his postdoc
Guzman basically distorts the activity
of neurons in in the mouse so in this
case instead of only activating part of
the assembly a subset of those 300
neurons we still activated 300 neurons
but not all as part of the assembly only
a subset is part of the assembly and the
rest is noise from non-assembly neurons
and then we look at whether the response
of the network is more similar between
testing and and the training than the
stimulation of the network so those are
two metrics to measure pattern
completion
and let me show you some example results
in this case it's a run of the full
spiky neural network if you look at the
very first portion the very first about
700 milliseconds the network is turns it
turns on it takes about 700 milliseconds
for the network to achieve a steady
state the first period of about three
quarters of a second after that is a
resting state where we let the network
go into spontaneous rhythms
and then we start a very brief training
section in this case of only about a
second and a half so this is a very
small uh setting of only 10 training
sets and after that we let the network
rest again let it do whatever it does
spontaneously and then we go into
testing mode where we only stimulate
part of the assemblies and just to
enlarge only the assembly component of
that testing period
we show again in this case the red are
the stimulated neurons it's only 60 out
of 300 in each assembly so only 20
percent of the assembly after a very
brief training protocol and the
remaining 80 percent of the cells
respond uh after about half of the Theta
cycle to complete that pattern in a very
effective way and this is done in this
case for three assembly
now if you just look at the number of
ca3 pyramidal cells in the mouse there
is space for about 250 independent
assemblies to be trained and retrieved
in this way but that's entirely with no
overlap in reality is almost certain
that assemblies do overlap in the real
hippocampus and we're now well
positioned to study the effect of
overlap on memory capacity and
performance
so uh the overall summary of all the
results is that we can obtain both
pattern completion and pattern
reconstruction in very robust way over a
wide range of pattern degradation so we
go from only 10 percent of the assembly
that is stimulated as a clue to 90 and
the number of presentations go to as
little as 10 to up to a hundred and in
most cases we get pattern completion
well above 50 percent uh closer
typically of 70 to 98 or so
so this is uh the result from the first
year of our grant The Next Step will be
to in fact investigate the role of the
individual gaborergic neurons
specifically there are very vague
theories about what the perisomatic
cells basket cells and exotonic cells do
and the dendrick targeting neurons
typically olm cells IV
cells and mossy fiber-associated cells
and what they do on both the training
and the testing regime
last but not least my acknowledgment
this grant was generously funded by the
department of energy with
a program officer Dr Robinson Pino and
my partner in crime is Professor Gina
Adam who is actually
working on the neuromorphic
implementation of these kinds of spiky
neural network in hardware and she has a
poster that despite what the program
said is now hanging in uh post number 43
upstairs so I hope to see you there
during the reception tonight and I'll
stop here
[Applause]
questions
so I have three small questions one what
is the factor that you gain in your in
in your simulation when you use GPU
versus CPU this is the first second why
you are using EG which neurons and how
you would introducers electrophysiology
and whether the electrophysiology means
also a construction of the special
structure of the of the neurons and
third uh what is the role of this sector
physiological properties and the
diversity between the different
populations in the pattern completion
awesome wonderful questions uh so the
first one about GPU it's just a matter
of speed so we can run a network with
about 80 000 neurons
um I wish I could say real time is not
quite real time but only about one in
ten so that means that we can run many
simulations per hour in fact much of the
time is just to implement the
simulations then they run quite quickly
so you could not possibly do that with
CPUs unless you can afford really large
super computer clusters the second one
is why is the kvh model so is the kvh
models are computationally very
efficient and they are known to be able
to reproduce the very wide diversity of
firing specifically in the hippocampus
you have dynamics that go from adaptive
spiking to regular spiking to bursting
to stuttering Etc and by simple tuning
of those parameters in the ZK Which
models you can reproduce them all and
what is the role of that diversity in
the circuit each of the neuron types
that is characterized has its own unique
signatures firing patterns
and although these cabbage models are
simplified models these can be casted in
is what we call Simple compartmental
models so each neuron might have four or
five compartments each compartment is
one of the layers of the hippocampus so
the connectivity that each neuron type
receive or send to other neurons is
compartment specific and this in fact
allows to fully reproduce what we know
about the in Vivo firing patterns in the
neurons
other questions
this model yes in fact we can so the
question was whether we are able to
generate a local field potential the
answer is yes in fact we're very
interested because uh just at the last
Society for Neuroscience about nine
months ago one experimental lab has been
able to measure local field potential in
ca3 ca3 in the rodent is a deep
structure so it's much harder to record
than ca1 but now we are I think well
positioned to try to see if that
emerging property is reproduced
okay thank you thank you