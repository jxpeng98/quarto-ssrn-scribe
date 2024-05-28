#show: doc => paper(
$if(font)$
  font: ["$font$"],
$endif$
$if(fontsize)$
  fontsize: $fontsize$,
$endif$
maketitle: $maketitle$,
$if(title)$
  title: [$title$],
$endif$
$if(by-author)$
authors: (
  $for(by-author)$
  (
    name: "$it.name.literal$",
    $for(it.affiliations/first)$
    department: [$it.department$],
    affiliation: [$it.name$],
    location: [$it.city$, $it.country$],
    $endfor$
    email: "$it.email$",
    note: "$it.note$"
  ),
  $endfor$
),
$endif$
$if(date)$
  date: [$date$],
$endif$
$if(abstract)$
  abstract: [$abstract$],
$endif$
$if(bibliography)$
  bibliography: bibliography($bibliography$, title: "References", style: "chicago-author-date"),
$endif$
doc
)
