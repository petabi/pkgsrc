# $NetBSD: buildlink3.mk,v 1.5 2018/01/10 16:33:23 jaapb Exp $

BUILDLINK_TREE+=	ocaml-opam

.if !defined(OCAML_OPAM_BUILDLINK3_MK)
OCAML_OPAM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-opam+=	ocaml-opam>=1.2.2
BUILDLINK_ABI_DEPENDS.ocaml-opam+=	ocaml-opam>=2.0.0_beta5
BUILDLINK_PKGSRCDIR.ocaml-opam?=	../../misc/ocaml-opam

.endif	# OCAML_OPAM_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-opam
