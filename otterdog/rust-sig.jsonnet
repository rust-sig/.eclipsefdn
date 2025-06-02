local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('foundation-internal.sig.rust', 'rust-sig') {
  settings+: {
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  teams+: [
    orgs.newTeam('WG Members') {
      description: "Working Group member affiliates",
      members+: [
        "SharonCorbett",
        "PLeVasseur"
      ],
      notifications: false,
    },
    orgs.newTeam('team') {
      description: "Eclipse Foundation staff members supporting the RUST SIG.",
      members+: [
        "SharonCorbett"
      ],
    },
  ],
  _repositories+:: [
    orgs.newRepo('rust-sig') {
      description: "Home of the Rust Special Interest Group (SIG) at the Eclipse Foundation.",
    },
  ],
}
