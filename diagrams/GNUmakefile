PUMLIMAGE=miy4/plantuml:1.2020.14
PUML=docker run -v=$(CURDIR):/work -w /work --rm --attach stdin --attach stdout --interactive $(PUMLIMAGE)
PUML_TARGETS=pandana-tree.png \
	nova-simple-vars.png nova-grouped-vars.png nova-other-vars.png \
	nova-mutated-vars.png \
	nova-simple-cuts.png nova-compound-cuts.png \
	nova-transform.png \
	pandana-var-classes.png pandana-arithmetic-classes.png \
	fv-uc-01.png fv-uc-02.png

PUML_TARGETS+=pandana-tree.png \
	nova-simple-vars.pdf nova-grouped-vars.pdf nova-other-vars.pdf \
	nova-mutated-vars.pdf \
	nova-simple-cuts.pdf nova-compound-cuts.pdf \
	nova-transform.pdf \
	pandana-var-classes.pdf pandana-arithmetic-classes.pdf

DOT_TARGETS=pandana-applied-tree.png pandana-tree.png standard_record_graph_full.png standard_record_graph_simplified.png table.png call-sequence-kEMEnergy.png

.PHONY : clean
.SUFFIXES : .pu .eps .pdf .png .dot

.pu.png:
	$(PUML) -tpng $<

.pu.eps:
	$(PUML) -teps $<

.eps.pdf:
	epstopdf $<

.dot.png:
	dot -o $@ -Tpng $<

all: $(PUML_TARGETS) $(DOT_TARGETS)

nova-simple-cuts.png: kHasVtx.ipu kVeto.ipu
nova-compound-cuts.png: kHasVtx.ipu kHaspng.ipu
nova-mutated-vars.png: nova-mutated-vars.ipu nova-transform.ipu
nova-transform.png: nova-transform.ipu	
nova-grouped-vars.png: nova-mutated-vars.ipu kLongestProng.ipu


pandana-tree.dot: pandana-tree.m4
	m4 $< > $@

clean:
	rm -f $(PUML_TARGETS) $(DOT_TARGETS) pandana-tree.dot
