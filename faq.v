module main

import veb


@['/faq'; get; post]
pub fn (mut app App) faq(mut ctx Context) veb.Result {
	title := 'FAQ'

	mut qa := {
	'Hvorfor er Værmeldinga.no bedre enn mange andre værmelding værtjenester på nett?' : 'Fordi Værmeldinga.no innhenter data fra er rekke metrologiske institutter og værdata tjenester. I tillegg så bruker vi AI til å hjelpe til med å spå været bedre'
	'Kan jeg hjelpe til med å gjøre dere enda bedre?' : 'Ja det kan du. Du kan f.eks legge igjen en beskjed til oss om det er ris eller ros.'
	'Har dere mobil app?' : 'Nei desverre. Da vi vet at de fleste skriver inn addresses i nettlesern så ønsker på dette tidspunktet ikke fokusere på flere platformer. Vårt hoved fokus er først og fremst å levere en så god tjeneste som mulig på weben'
	'Hvilket teknologier er benyttet for a utvikle denne tjenesten?' : 'Det har vært et mål for oss a benytte moderne teknologi med fokus på hastighet og brukervnennlighet. Som backend har vi valgt og bruke "V" slash "vlang". Webserver er Veb som er vlangs innebygde server. På frontend har vi valgt å bruke Bulma.io (HTML/CSS). Operativsystem er Linux / Docker(Ubuntu)'
	}
	return $veb.html('static/faq.html')
}
