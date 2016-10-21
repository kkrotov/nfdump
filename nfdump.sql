CREATE TABLE nfdump
(
  ts timestamp without time zone, -- Date first seen
  te timestamp without time zone, -- Date last seen
  td double precision, -- Duration
  sa inet, -- Source Address
  da inet, -- Destination Address
  sp bigint, -- Source Port
  dp bigint, -- Destination Port
  pr character varying, -- Protocol
  flg character varying, -- TCP Flags
  fwd integer, -- Forwarding Status
  stos integer, -- Tos - Src tos
  ipkt integer, -- In Packets
  ibyt bigint, -- In Bytes
  opkt integer, -- Out Packets
  obyt bigint, -- Out Bytes
  "in" bigint, -- Input Interface num
  "out" bigint, -- Output Interface num
  sas integer, -- Source AS
  das integer, -- Destination AS
  smk integer, -- Src mask
  dmk integer, -- Dst mask
  dtos integer, -- Tos - Dst tos
  dir integer, -- Direction: ingress, egress
  nh inet, -- Next-hop IP Address
  nhb inet, -- BGP Next-hop IP Address
  svln integer, -- Src Vlan
  dvln integer, -- Dst Vlan
  ismc character varying, -- Input Src Mac Addr
  odmc character varying, -- Output Dst Mac Addr
  idmc character varying, -- Input Dst Mac Addr
  osmc character varying, -- Output Src Mac Addr
  mpls1 character varying, -- MPLS Label 1
  mpls2 character varying, -- MPLS Label 2
  mpls3 character varying, -- MPLS Label 3
  mpls4 character varying, -- MPLS Label 4
  mpls5 character varying, -- MPLS Label 5
  mpls6 character varying, -- MPLS Label 6
  mpls7 character varying, -- MPLS Label 7
  mpls8 character varying, -- MPLS Label 8
  mpls9 character varying, -- MPLS Label 9
  mpls10 character varying, -- MPLS Label 10
  cl double precision, -- client latency
  sl double precision, -- server latency
  al double precision, -- app latency
  ra inet, -- Router IP Address
  eng character varying, -- Engine Type/ID
  exid bigint,
  tr timestamp without time zone -- Received Time
)
WITH (
  OIDS=FALSE
);
ALTER TABLE nfdump
  OWNER TO kkrotov;
COMMENT ON COLUMN nfdump.ts IS 'Date first seen';
COMMENT ON COLUMN nfdump.te IS 'Date last seen';
COMMENT ON COLUMN nfdump.td IS 'Duration';
COMMENT ON COLUMN nfdump.sa IS 'Source Address';
COMMENT ON COLUMN nfdump.da IS 'Destination Address';
COMMENT ON COLUMN nfdump.sp IS 'Source Port';
COMMENT ON COLUMN nfdump.dp IS 'Destination Port';
COMMENT ON COLUMN nfdump.pr IS 'Protocol';
COMMENT ON COLUMN nfdump.flg IS 'TCP Flags';
COMMENT ON COLUMN nfdump.fwd IS 'Forwarding Status';
COMMENT ON COLUMN nfdump.stos IS 'Tos - Src tos';
COMMENT ON COLUMN nfdump.ipkt IS 'In Packets';
COMMENT ON COLUMN nfdump.ibyt IS 'In Bytes';
COMMENT ON COLUMN nfdump.opkt IS 'Out Packets';
COMMENT ON COLUMN nfdump.obyt IS 'Out Bytes';
COMMENT ON COLUMN nfdump."in" IS 'Input Interface num';
COMMENT ON COLUMN nfdump."out" IS 'Output Interface num';
COMMENT ON COLUMN nfdump.sas IS 'Source AS';
COMMENT ON COLUMN nfdump.das IS 'Destination AS';
COMMENT ON COLUMN nfdump.smk IS 'Src mask';
COMMENT ON COLUMN nfdump.dmk IS 'Dst mask';
COMMENT ON COLUMN nfdump.dtos IS 'Tos - Dst tos';
COMMENT ON COLUMN nfdump.dir IS 'Direction: ingress, egress';
COMMENT ON COLUMN nfdump.nh IS 'Next-hop IP Address';
COMMENT ON COLUMN nfdump.nhb IS 'BGP Next-hop IP Address';
COMMENT ON COLUMN nfdump.svln IS 'Src Vlan';
COMMENT ON COLUMN nfdump.dvln IS 'Dst Vlan';
COMMENT ON COLUMN nfdump.ismc IS 'Input Src Mac Addr';
COMMENT ON COLUMN nfdump.odmc IS 'Output Dst Mac Addr';
COMMENT ON COLUMN nfdump.idmc IS 'Input Dst Mac Addr';
COMMENT ON COLUMN nfdump.osmc IS 'Output Src Mac Addr';
COMMENT ON COLUMN nfdump.mpls1 IS 'MPLS Label 1';
COMMENT ON COLUMN nfdump.mpls2 IS 'MPLS Label 2';
COMMENT ON COLUMN nfdump.mpls3 IS 'MPLS Label 3';
COMMENT ON COLUMN nfdump.mpls4 IS 'MPLS Label 4';
COMMENT ON COLUMN nfdump.mpls5 IS 'MPLS Label 5';
COMMENT ON COLUMN nfdump.mpls6 IS 'MPLS Label 6';
COMMENT ON COLUMN nfdump.mpls7 IS 'MPLS Label 7';
COMMENT ON COLUMN nfdump.mpls8 IS 'MPLS Label 8';
COMMENT ON COLUMN nfdump.mpls9 IS 'MPLS Label 9';
COMMENT ON COLUMN nfdump.mpls10 IS 'MPLS Label 10';
COMMENT ON COLUMN nfdump.cl IS 'client latency';
COMMENT ON COLUMN nfdump.sl IS 'server latency';
COMMENT ON COLUMN nfdump.al IS 'app latency';
COMMENT ON COLUMN nfdump.ra IS 'Router IP Address';
COMMENT ON COLUMN nfdump.eng IS 'Engine Type/ID';
COMMENT ON COLUMN nfdump.tr IS 'Received Time';
