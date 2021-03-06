(lang dune 2.0)
(implicit_transitive_deps false)
(generate_opam_files true)

(name alcotest)
(source (github mirage/alcotest))
(license ISC)
(authors "Thomas Gazagnaire")
(maintainers "thomas@gazagnaire.org")

(package
 (name alcotest)
 (synopsis "Alcotest is a lightweight and colourful test framework")
 (documentation "https://mirage.github.io/alcotest")
 (description "\
Alcotest exposes simple interface to perform unit tests. It exposes
a simple TESTABLE module type, a check function to assert test
predicates and a run function to perform a list of unit -> unit
test callbacks.

Alcotest provides a quiet and colorful output where only faulty runs
are fully displayed at the end of the run (with the full logs ready to
inspect), with a simple (yet expressive) query language to select the
tests to run.
")
 (depends
  (ocaml (>= 4.03.0))
  (fmt (>= 0.8.6))
  astring
  cmdliner
  uuidm
  re
  stdlib-shims))

(package
 (name alcotest-async)
 (synopsis "Async-based helpers for Alcotest")
 (documentation "https://mirage.github.io/alcotest")
 (depends
  (ocaml (>= 4.03.0))
  (alcotest (= :version))
  (async_unix (>= v0.9.0))
  (core_kernel (>= v0.9.0))))

(package
 (name alcotest-lwt)
 (synopsis "Lwt-based helpers for Alcotest")
 (documentation "https://mirage.github.io/alcotest")
 (depends
  (ocaml (>= 4.03.0))
  (alcotest (= :version))
  lwt
  logs))
