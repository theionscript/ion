#!/bin/sh
#
# ῖon
# ===
#
# - 0.9.0; 2026-6-4 20:26
#   - linked the metadata with the query system
# - 0.8.0; 2026-6-2 14:17
#   - added metadata extraction
# - 0.7.0; 2026-6-1 19:15
#   - added derivation support
# - 0.6.0; 2026-4-26 20:20
#   - added ION_SPIN
# - 0.5.0; 2026-4-20 20:10
#   - rough mvp
# - 0.4.0; 2026-4-19 14:05
#   - added the frontend component system
#   - added basic post support
# - 0.3.0; 2026-4-16 19:27
#   - the build system now integrates the server
#   - added rough support for document output
# - 0.2.0; 2026-4-15 17:18
#   - finished the build system
#   - every build now includes its log
#   - added a polling mode to the watcher
#   - updated the licence
# - 0.1.0; 2026-3-30 22:32
#   - initial release
#
# References
# ==========
#
# - shellhaters.org
# - dylanaraps/pure-sh-bible
# - lua.org/manual/5.4/manual.html
# - pandoc.org/MANUAL.html#pandocs-markdown
# - pandoc.org/lua-filters.html
#
# Licence
# =======
#
# The source of this software is open to all, and free to all those
# who are open; use of this software to provide a service requires full
# transparency of the service stack, or otherwise a separate licence can
# be obtained.
#
# This licence is based on the SSPL from MongoDB, Inc. which itself was
# derived from the AGPL from the Free Software Foundation. The Contributions
# section that follows after the Licence was derived from the CLAs of the Apache
# Software Foundation and Project Harmony. The aim is to remain true to the
# spirit of free and open source software while supporting its long-term
# stability and reducing ambiguity for private enterprises.
#
# 0. Definitions
# --------------
#
# “The Author” refers to the copyright holder,
# or the rightful heirs and assigns thereof.
#
# “This Licence” refers to the Libra Public Licence,
# that is the licence attached to the head of this file.
#
# “Copyright” also means copyright-like laws that apply
# to other kinds of works, such as semiconductor masks.
#
# “The Program” refers to any copyrightable work licensed
# under this Licence. Each licensee is addressed as “you”.
# “Licensees” and “recipients” may be individuals or organisations.
#
# To “modify” a work means to copy from, adapt, or translate all or part
# of the work in a fashion requiring copyright permission, including but
# not limited to the use of automated translation tools such as language
# models or other machine learning methods, other than the making of an
# exact copy. The resulting work is called a “modified version” of the
# earlier work or a work “based on” the earlier work.
#
# A “covered work” means either the unmodified Program or a work based on
# the Program.
#
# To “propagate” a work means to do anything with it that, without
# permission, would make you directly or secondarily liable for
# infringement under applicable copyright law, except executing it on a
# computer or modifying a private copy. Propagation includes copying,
# distribution (with or without modification), making available to the
# public, and in some countries other activities as well.
#
# To “convey” a work means any kind of propagation that enables other
# parties to make or receive copies. Mere interaction with a user through
# a computer network, with no transfer of a copy, is not conveying.
#
# An interactive user interface displays “Appropriate Legal Notices” to
# the extent that it includes a convenient and prominently visible feature
# that (1) displays an appropriate copyright notice, and (2) tells the
# user that there is no warranty for the work (except to the extent that
# warranties are provided), that licensees may convey the work under this
# Licence, and how to view a copy of this Licence. If the interface
# presents a list of user commands or options, such as a menu, a prominent
# item in the list meets this criterion.
#
# 1. Source Code
# --------------
#
# The “source code” for a work means the preferred form of the work for
# making modifications to it. “Object code” means any non-source form of a
# work.
#
# A “Standard Interface” means an interface that either is an official
# standard defined by a recognised standards body, or, in the case of
# interfaces specified for a particular programming language, one that is
# widely used among developers working in that language.
#
# The “System Libraries” of an executable work include anything, other
# than the work as a whole, that (a) is included in the normal form of
# packaging a Major Component, but which is not part of that Major Component,
# and (b) serves only to enable use of the work with that Major Component,
# or to implement a Standard Interface for which an implementation is available
# to the public in source code form. A “Major Component”, in this context,
# means a major essential component (kernel, window system, and so on) of
# the specific operating system (if any) on which the executable work runs,
# or a compiler used to produce the work, or an object code interpreter
# used to run it.
#
# The “Corresponding Source” for a work in object code form means all the
# source code needed to generate, install, and (for an executable work)
# run the object code and to modify the work, including scripts to control
# those activities. However, it does not include the work's System
# Libraries, or general-purpose tools or generally available free programs
# which are used unmodified in performing those activities but which are
# not part of the work. For example, Corresponding Source includes
# interface definition files associated with source files for the work,
# and the source code for shared libraries and dynamically linked
# subprograms that the work is specifically designed to require, such as
# by intimate data communication or control flow between those subprograms
# and other parts of the work.
#
# The Corresponding Source need not include anything that users can
# regenerate automatically from other parts of the Corresponding Source.
#
# The Corresponding Source for a work in source code form is that same
# work.
#
# 2. Basic Permissions
# --------------------
#
# All rights granted under this Licence are granted for the term of
# copyright on the Program, and are irrevocable provided the stated
# conditions are met. This Licence explicitly affirms your unlimited
# permission to run the unmodified Program, subject to section 13. The
# output from running a covered work is covered by this Licence only if
# the output, given its content, constitutes a covered work. This Licence
# acknowledges your rights of fair use or other equivalent, as provided by
# copyright law.
#
# Subject to section 13, you may make, run and propagate covered works
# that you do not convey, without conditions so long as your licence
# otherwise remains in force. You may convey covered works to others for
# the sole purpose of having them make modifications exclusively for you,
# or provide you with facilities for running those works, provided that
# you comply with the terms of this Licence in conveying all material for
# which you do not control copyright. Those thus making or running the
# covered works for you must do so exclusively on your behalf, under your
# direction and control, on terms that prohibit them from making any
# copies of your copyrighted material outside their relationship with you.
#
# Conveying under any other circumstances is permitted solely under the
# conditions stated below. Sublicensing is not allowed; section 10 makes
# it unnecessary.
#
# 3. Protecting Users' Legal Rights From Anti-Circumvention Law
# -------------------------------------------------------------
#
# No covered work shall be deemed part of an effective technological
# measure under any applicable law fulfilling obligations under article 11
# of the WIPO copyright treaty adopted on 20 December 1996, or similar
# laws prohibiting or restricting circumvention of such measures.
#
# When you convey a covered work, you waive any legal power to forbid
# circumvention of technological measures to the extent such circumvention
# is effected by exercising rights under this Licence with respect to the
# covered work, and you disclaim any intention to limit operation or
# modification of the work as a means of enforcing, against the work's
# users, your or third parties' legal rights to forbid circumvention of
# technological measures.
#
# 4. Conveying Verbatim Copies
# ----------------------------
#
# You may convey verbatim copies of the Program's source code as you
# receive it, in any medium, provided that you conspicuously and
# appropriately publish on each copy an appropriate copyright notice; keep
# intact all notices stating that this Licence and any non-permissive
# terms added in accord with section 7 apply to the code; keep intact all
# notices of the absence of any warranty; and give all recipients a copy
# of this Licence along with the Program.
#
# You may charge any price or no price for each copy that you convey, and
# you may offer support or warranty protection for a fee.
#
# 5. Conveying Modified Source Versions
# -------------------------------------
#
# You may convey a work based on the Program, or the modifications to
# produce it from the Program, in the form of source code under the terms
# of section 4, provided that you also meet all of these conditions:
#
# - a) The work must carry prominent notices stating that you modified
#   it, and giving a relevant date.
# - b) The work must carry prominent notices stating that it is released
#   under this Licence and any conditions added under section 7. This
#   requirement modifies the requirement in section 4 to “keep intact all
#   notices”.
# - c) You must license the entire work, as a whole, under this Licence
#   to anyone who comes into possession of a copy. This Licence will
#   therefore apply, along with any applicable section 7 additional terms,
#   to the whole of the work, and all its parts, regardless of how they
#   are packaged. This Licence gives no permission to license the work in
#   any other way, but it does not invalidate such permission if you have
#   separately received it.
# - d) If the work has interactive user interfaces, each must display
#   Appropriate Legal Notices; however, if the Program has interactive
#   interfaces that do not display Appropriate Legal Notices, your work
#   need not make them do so.
#
# A compilation of a covered work with other separate and independent
# works, which are not by their nature extensions of the covered work, and
# which are not combined with it such as to form a larger program, in or
# on a volume of a storage or distribution medium, is called an
# “aggregate” if the compilation and its resulting copyright are not used
# to limit the access or legal rights of the compilation's users beyond
# what the individual works permit. Inclusion of a covered work in an
# aggregate does not cause this Licence to apply to the other parts of the
# aggregate.
#
# 6. Conveying Non-Source Forms
# -----------------------------
#
# You may convey a covered work in object code form under the terms of
# sections 4 and 5, provided that you also convey the machine-readable
# Corresponding Source under the terms of this Licence, in one of these
# ways:
#
# - a) Convey the object code in, or embodied in, a physical product
#   (including a physical distribution medium), accompanied by the
#   Corresponding Source fixed on a durable physical medium customarily
#   used for software interchange.
# - b) Convey the object code in, or embodied in, a physical product
#   (including a physical distribution medium), accompanied by a written
#   offer, valid for at least three years and valid for as long as you
#   offer spare parts or customer support for that product model, to give
#   anyone who possesses the object code either (1) a copy of the
#   Corresponding Source for all the software in the product that is
#   covered by this Licence, on a durable physical medium customarily used
#   for software interchange, for a price no more than your reasonable
#   cost of physically performing this conveying of source, or (2) access
#   to copy the Corresponding Source from a network server at no charge.
# - c) Convey individual copies of the object code with a copy of the
#   written offer to provide the Corresponding Source. This alternative is
#   allowed only occasionally and noncommercially, and only if you
#   received the object code with such an offer, in accord with subsection
#   6b.
# - d) Convey the object code by offering access from a designated place
#   (gratis or for a charge), and offer equivalent access to the
#   Corresponding Source in the same way through the same place at no
#   further charge. You need not require recipients to copy the
#   Corresponding Source along with the object code. If the place to copy
#   the object code is a network server, the Corresponding Source may be
#   on a different server (operated by you or a third party) that supports
#   equivalent copying facilities, provided you maintain clear directions
#   next to the object code saying where to find the Corresponding Source.
#   Regardless of what server hosts the Corresponding Source, you remain
#   obligated to ensure that it is available for as long as needed to
#   satisfy these requirements.
# - e) Convey the object code using peer-to-peer transmission, provided
#   you inform other peers where the object code and Corresponding Source
#   of the work are being offered to the general public at no charge under
#   subsection 6d.
#
# A separable portion of the object code, whose source code is excluded
# from the Corresponding Source as a System Library, need not be included
# in conveying the object code work.
#
# A “User Product” is either (1) a “consumer product”, which means any
# tangible personal property which is normally used for personal, family,
# or household purposes, or (2) anything designed or sold for
# incorporation into a dwelling. In determining whether a product is a
# consumer product, doubtful cases shall be resolved in favour of coverage.
# For a particular product received by a particular user, “normally used”
# refers to a typical or common use of that class of product, regardless
# of the status of the particular user or of the way in which the
# particular user actually uses, or expects or is expected to use, the
# product. A product is a consumer product regardless of whether the
# product has substantial commercial, industrial or non-consumer uses,
# unless such uses represent the only significant mode of use of the
# product.
#
# “Installation Information” for a User Product means any methods,
# procedures, authorisation keys, or other information required to install
# and execute modified versions of a covered work in that User Product
# from a modified version of its Corresponding Source. The information
# must suffice to ensure that the continued functioning of the modified
# object code is in no case prevented or interfered with solely because
# modification has been made.
#
# If you convey an object code work under this section in, or with, or
# specifically for use in, a User Product, and the conveying occurs as
# part of a transaction in which the right of possession and use of the
# User Product is transferred to the recipient in perpetuity or for a
# fixed term (regardless of how the transaction is characterised), the
# Corresponding Source conveyed under this section must be accompanied by
# the Installation Information. But this requirement does not apply if
# neither you nor any third party retains the ability to install modified
# object code on the User Product (for example, the work has been
# installed in ROM).
#
# The requirement to provide Installation Information does not include a
# requirement to continue to provide support service, warranty, or updates
# for a work that has been modified or installed by the recipient, or for
# the User Product in which it has been modified or installed. Access to a
# network may be denied when the modification itself materially and
# adversely affects the operation of the network or violates the rules and
# protocols for communication across the network.
#
# Corresponding Source conveyed, and Installation Information provided, in
# accord with this section must be in a format that is publicly documented
# (and with an implementation available to the public in source code
# form), and must require no special password or key for unpacking,
# reading or copying.
#
# 7. Additional Terms
# -------------------
#
# “Additional permissions” are terms that supplement the terms of this
# Licence by making exceptions from one or more of its conditions.
# Additional permissions that are applicable to the entire Program shall
# be treated as though they were included in this Licence, to the extent
# that they are valid under applicable law. If additional permissions
# apply only to part of the Program, that part may be used separately
# under those permissions, but the entire Program remains governed by this
# Licence without regard to the additional permissions.
#
# When you convey a copy of a covered work, you may at your option remove
# any additional permissions from that copy, or from any part of it.
# (Additional permissions may be written to require their own removal in
# certain cases when you modify the work.) You may place additional
# permissions on material, added by you to a covered work, for which you
# have or can give appropriate copyright permission.
#
# Notwithstanding any other provision of this Licence, for material you
# add to a covered work, you may (if authorised by the copyright holders
# of that material) supplement the terms of this Licence with terms:
#
# - a) Disclaiming warranty or limiting liability differently from the
#   terms of sections 15 and 16 of this Licence; or
# - b) Requiring preservation of specified reasonable legal notices or
#   author attributions in that material or in the Appropriate Legal
#   Notices displayed by works containing it; or
# - c) Prohibiting misrepresentation of the origin of that material, or
#   requiring that modified versions of such material be marked in
#   reasonable ways as different from the original version; or
# - d) Limiting the use for publicity purposes of names of licensors or
#   authors of the material; or
# - e) Declining to grant rights under trademark law for use of some
#   trade names, trademarks, or service marks; or
# - f) Requiring indemnification of licensors and authors of that
#   material by anyone who conveys the material (or modified versions of
#   it) with contractual assumptions of liability to the recipient, for
#   any liability that these contractual assumptions directly impose on
#   those licensors and authors.
#
# All other non-permissive additional terms are considered “further
# restrictions” within the meaning of section 10. If the Program as you
# received it, or any part of it, contains a notice stating that it is
# governed by this Licence along with a term that is a further
# restriction, you may remove that term. If a licence document contains a
# further restriction but permits relicensing or conveying under this
# Licence, you may add to a covered work material governed by the terms of
# that licence document, provided that the further restriction does not
# survive such relicensing or conveying.
#
# If you add terms to a covered work in accord with this section, you must
# place, in the relevant source files, a statement of the additional terms
# that apply to those files, or a notice indicating where to find the
# applicable terms.
#
# Additional terms, permissive or non-permissive, may be stated in the
# form of a separately written licence, or stated as exceptions; the above
# requirements apply either way.
#
# 8. Termination
# --------------
#
# You may not propagate or modify a covered work except as expressly
# provided under this Licence. Any attempt otherwise to propagate or
# modify it is void, and will automatically terminate your rights under
# this Licence (including any patent licences granted under the third
# paragraph of section 11).
#
# However, if you cease all violation of this Licence, then your licence
# from a particular copyright holder is reinstated (a) provisionally,
# unless and until the copyright holder explicitly and finally terminates
# your licence, and (b) permanently, if the copyright holder fails to
# notify you of the violation by some reasonable means prior to 60 days
# after the cessation.
#
# Moreover, your licence from a particular copyright holder is reinstated
# permanently if the copyright holder notifies you of the violation by
# some reasonable means, this is the first time you have received notice
# of violation of this Licence (for any work) from that copyright holder,
# and you cure the violation prior to 30 days after your receipt of the
# notice.
#
# Termination of your rights under this section does not terminate the
# licences of parties who have received copies or rights from you under
# this Licence. If your rights have been terminated and not permanently
# reinstated, you do not qualify to receive new licences for the same
# material under section 10.
#
# 9. Acceptance Not Required for Having Copies
# --------------------------------------------
#
# You are not required to accept this Licence in order to receive or run a
# copy of the Program. Ancillary propagation of a covered work occurring
# solely as a consequence of using peer-to-peer transmission to receive a
# copy likewise does not require acceptance. However, nothing other than
# this Licence grants you permission to propagate or modify any covered
# work. These actions infringe copyright if you do not accept this
# Licence. Therefore, by modifying or propagating a covered work, you
# indicate your acceptance of this Licence to do so.
#
# 10. Automatic Licensing of Downstream Recipients
# ------------------------------------------------
#
# Each time you convey a covered work, the recipient automatically
# receives a licence from the original licensors, to run, modify and
# propagate that work, subject to this Licence. You are not responsible
# for enforcing compliance by third parties with this Licence.
#
# An “entity transaction” is a transaction transferring control of an
# organisation, or substantially all assets of one, or subdividing an
# organisation, or merging organisations. If propagation of a covered work
# results from an entity transaction, each party to that transaction who
# receives a copy of the work also receives whatever licences to the work
# the party's predecessor in interest had or could give under the previous
# paragraph, plus a right to possession of the Corresponding Source of the
# work from the predecessor in interest, if the predecessor has it or can
# get it with reasonable efforts.
#
# You may not impose any further restrictions on the exercise of the
# rights granted or affirmed under this Licence. For example, you may not
# impose a licence fee, royalty, or other charge for exercise of rights
# granted under this Licence, and you may not initiate litigation
# (including a cross-claim or counterclaim in a lawsuit) alleging that any
# patent claim is infringed by making, using, selling, offering for sale,
# or importing the Program or any portion of it.
#
# 11. Patents
# -----------
#
# A “contributor” is a copyright holder who authorises use under this
# Licence of the Program or a work on which the Program is based. The work
# thus licensed is called the contributor's “contributor version”.
#
# A contributor's “essential patent claims” are all patent claims owned or
# controlled by the contributor, whether already acquired or hereafter
# acquired, that would be infringed by some manner, permitted by this
# Licence, of making, using, or selling its contributor version, but do
# not include claims that would be infringed only as a consequence of
# further modification of the contributor version. For purposes of this
# definition, “control” includes the right to grant patent sublicences in
# a manner consistent with the requirements of this Licence.
#
# Each contributor grants you a non-exclusive, worldwide, royalty-free
# patent licence under the contributor's essential patent claims, to make,
# use, sell, offer for sale, import and otherwise run, modify and
# propagate the contents of its contributor version.
#
# In the following three paragraphs, a “patent licence” is any express
# agreement or commitment, however denominated, not to enforce a patent
# (such as an express permission to practise a patent or covenant not to
# sue for patent infringement). To “grant” such a patent licence to a
# party means to make such an agreement or commitment not to enforce a
# patent against the party.
#
# If you convey a covered work, knowingly relying on a patent licence, and
# the Corresponding Source of the work is not available for anyone to
# copy, free of charge and under the terms of this Licence, through a
# publicly available network server or other readily accessible means,
# then you must either (1) cause the Corresponding Source to be so
# available, or (2) arrange to deprive yourself of the benefit of the
# patent licence for this particular work, or (3) arrange, in a manner
# consistent with the requirements of this Licence, to extend the patent
# licence to downstream recipients. “Knowingly relying” means you have
# actual knowledge that, but for the patent licence, your conveying the
# covered work in a country, or your recipient's use of the covered work
# in a country, would infringe one or more identifiable patents in that
# country that you have reason to believe are valid.
#
# If, pursuant to or in connection with a single transaction or
# arrangement, you convey, or propagate by procuring conveyance of, a
# covered work, and grant a patent licence to some of the parties
# receiving the covered work authorising them to use, propagate, modify or
# convey a specific copy of the covered work, then the patent licence you
# grant is automatically extended to all recipients of the covered work
# and works based on it.
#
# A patent licence is “discriminatory” if it does not include within the
# scope of its coverage, prohibits the exercise of, or is conditioned on
# the non-exercise of one or more of the rights that are specifically
# granted under this Licence. You may not convey a covered work if you are
# a party to an arrangement with a third party that is in the business of
# distributing software, under which you make payment to the third party
# based on the extent of your activity of conveying the work, and under
# which the third party grants, to any of the parties who would receive
# the covered work from you, a discriminatory patent licence (a) in
# connection with copies of the covered work conveyed by you (or copies
# made from those copies), or (b) primarily for and in connection with
# specific products or compilations that contain the covered work, unless
# you entered into that arrangement, or that patent licence was granted,
# prior to 28 March 2007.
#
# Nothing in this Licence shall be construed as excluding or limiting any
# implied licence or other defences to infringement that may otherwise be
# available to you under applicable patent law.
#
# 12. No Surrender of Others' Freedom
# -----------------------------------
#
# If conditions are imposed on you (whether by court order, agreement or
# otherwise) that contradict the conditions of this Licence, they do not
# excuse you from the conditions of this Licence. If you cannot use,
# propagate or convey a covered work so as to satisfy simultaneously your
# obligations under this Licence and any other pertinent obligations, then
# as a consequence you may not use, propagate or convey it at all. For
# example, if you agree to terms that obligate you to collect a royalty
# for further conveying from those to whom you convey the Program, the
# only way you could satisfy both those terms and this Licence would be to
# refrain entirely from conveying the Program.
#
# 13. Offering the Program as a Service
# -------------------------------------
#
# If you make the functionality of the Program or a modified version
# available to third parties as a service, you must either
# obtain a separate licence from the Author, or otherwise
# you must make the Service Source Code available via network download
# to everyone at no charge, under the terms of this Licence. Making the
# functionality of the Program or modified version available to third
# parties as a service includes, without limitation, enabling
# third parties to interact with the functionality of the Program or modified
# version remotely through a computer network, offering a service the value
# of which entirely or primarily derives from the value of the Program or
# modified version, or offering a service that accomplishes for users the
# primary purpose of the Program or modified version.
#
# “Service Source Code” means the Corresponding Source for the Program or
# the modified version, and the Corresponding Source for all programs that
# you use to make the Program or modified version available as a service,
# including, without limitation, management software, user interfaces,
# application program interfaces, automation software, monitoring
# software, backup software, storage software and hosting software, all
# such that a user could run an instance of the service using the Service
# Source Code you make available.
#
# 14. Revised Versions of this Licence
# ------------------------------------
#
# The Author may publish revised and/or new versions of the Libra
# Public Licence from time to time. Such new versions will be similar in
# spirit to the present version, but may differ in detail to address new
# problems or concerns.
#
# Each version is given a distinguishing version number. If the Program
# specifies that a certain numbered version of the Libra Public
# Licence “or any later version” applies to it, you have the option of
# following the terms and conditions either of that numbered version or of
# any later version published by the Author. If the Program does not
# specify a version number of the Libra Public Licence, you may
# choose any version ever published by the Author.
#
# If the Program specifies that a proxy can decide which future versions
# of the Libra Public Licence can be used, that proxy's public
# statement of acceptance of a version permanently authorises you to
# choose that version for the Program.
#
# Later licence versions may give you additional or different permissions.
# However, no additional obligations are imposed on any author or
# copyright holder as a result of your choosing to follow a later version.
#
# 15. Disclaimer of Warranty
# --------------------------
#
# THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
# APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
# HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT
# WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
# PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF
# THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME
# THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.
#
# 16. Limitation of Liability
# ---------------------------
#
# IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
# WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR
# CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
# INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES
# ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT
# NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES
# SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE
# WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
#
# 17. Interpretation of Sections 15 and 16
# ----------------------------------------
#
# If the disclaimer of warranty and limitation of liability provided above
# cannot be given local legal effect according to their terms, reviewing
# courts shall apply local law that most closely approximates an absolute
# waiver of all civil liability in connection with the Program, unless a
# warranty or assumption of liability accompanies a copy of the Program in
# return for a fee.
#
# Contributions
# =============
#
# By submitting a contribution to this project, you grant the Author
# perpetual, worldwide, non-exclusive, no-charge, royalty-free, transferable,
# and irrevocable licence to import, use, run, reproduce, modify, prepare, display,
# perform, transfer, distribute, offer to sell, sell, and sublicence through
# multiple tiers of sublicensees, your contributions and such derivative works,
# including patent licences for any patent claims you own or control that are
# necessarily infringed by your contribution.
#
# The Author provides no warranty regarding the acceptance or use of
# your contribution, for which you represent that you have the legal authority
# to grant the above licence, and that it is your original work or that you
# have all necessary rights, and you have fully disclosed to the Author any
# necessary details regarding its origin and any licence restrictions,
# including, but not limited to, related patents, trademarks, and any
# employer's intellectual property rights.
#
# Developers
# ==========
#
# Due to the lack of variable scoping in POSIX shell scripts, all shell
# variables declared within functions are prefixed with a unique string,
# so that functions can call other functions without potentially getting
# their own variables overwritten. This wouldn't help in the case of
# recursive functions. This will likely be replaced with the local
# keyword at some point. The last prefix used was: fm

export ION___ERROR_PREFIX_MAIN="${ION___ERROR_PREFIX_MAIN:-"- "}"
export ION___ERROR_PREFIX_SUB="${ION___ERROR_PREFIX_SUB:-"  - "}"
export ION___ERROR_PREFIX_SUBL="${ION___ERROR_PREFIX_SUBL:-"["}"
export ION___ERROR_PREFIX_SUBR="${ION___ERROR_PREFIX_SUBR:-"] "}"
export ION___ERROR_INFIX_MAIN="${ION___ERROR_INFIX_MAIN:-": "}"
export ION___ERROR_INFIX_SUB="${ION___ERROR_INFIX_SUB:-"; "}"

export ION___TYPE_SEPARATOR="${ION___TYPE_SEPARATOR:-"."}"
export ION___TITLE_SEPARATOR="${ION___TITLE_SEPARATOR:-" – "}"

export ION___QUERY_PHRASE="${ION___QUERY_PHRASE:-"."}"
export ION___QUERY_CLAUSE="${ION___QUERY_CLAUSE:-":"}"
export ION___QUERY_SENTENCE="${ION___QUERY_SENTENCE:-"::"}"
export ION___QUERY_PARAGRAPH="${ION___QUERY_PARAGRAPH:-":::"}"

export ION___QUERY_ALL="${ION___QUERY_ALL:-"/"}"
export ION___QUERY_SEPARATOR="${ION___QUERY_SEPARATOR:-"?"}"
export ION___QUERY_NESTED_LEFT="${ION___QUERY_NESTED_LEFT:-"{"}"
export ION___QUERY_NESTED_RIGHT="${ION___QUERY_NESTED_RIGHT:-"}"}"

export ION___QUERY_SUBJECT="${ION___QUERY_SUBJECT:-"1"}"
export ION___QUERY_VERB="${ION___QUERY_VERB:-"2"}"

export ION___SUFFIX_SECONDS="${ION___SUFFIX_SECONDS:-"s"}"

export ION___SIGNAL_ALL="${ION___SIGNAL_ALL:-"-"}"
export ION___SIGNAL_INPUT="${ION___SIGNAL_INPUT:-"i"}"
export ION___SIGNAL_SOURCE="${ION___SIGNAL_SOURCE:-"s"}"

export ION__EXT_JS="${ION__EXT_JS:-"js"}"
export ION__EXT_CSS="${ION__EXT_CSS:-"css"}"
export ION__EXT_MAP="${ION__EXT_MAP:-"map"}"
export ION__EXT_HTML="${ION__EXT_HTML:-"html"}"
export ION__EXT_JSON="${ION__EXT_JSON:-"json"}"
export ION__EXT_META="${ION__EXT_META:-"meta"}"
export ION__EXT_PANDOC="${ION__EXT_PANDOC:-"pandoc"}"

export ION__WORD_INFO="${ION__WORD_INFO:-"info"}"
export ION__WORD_NOTE="${ION__WORD_NOTE:-"note"}"
export ION__WORD_ERROR="${ION__WORD_ERROR:-"error"}"
export ION__WORD_LOG="${ION__WORD_LOG:-"log"}"
export ION__WORD_INBOX="${ION__WORD_INBOX:-"inbox"}"
export ION__WORD_INDEX="${ION__WORD_INDEX:-"index"}"
export ION__WORD_BUILD="${ION__WORD_BUILD:-"build"}"
export ION__WORD_SOURCE="${ION__WORD_SOURCE:-"source"}"
export ION__WORD_MAIN="${ION__WORD_MAIN:-"main"}"
export ION__WORD_META="${ION__WORD_META:-"meta"}"
export ION__WORD_MESA="${ION__WORD_MESA:-"mesa"}"

export ION__NAME_LOG="${ION__NAME_LOG:-".$ION__WORD_LOG"}"
export ION__NAME_PLAN="${ION__NAME_PLAN:-".$ION__WORD_BUILD"}"
export ION__NAME_ROOT="${ION__NAME_ROOT:-".$ION__WORD_INDEX"}"
export ION__NAME_BRANCH="${ION__NAME_BRANCH:-"$ION__WORD_INDEX"}"
export ION__NAME_INDEX_CSS="${ION__NAME_INDEX_CSS:-"$ION__NAME_BRANCH.$ION__EXT_CSS"}"
export ION__NAME_INDEX_JS="${ION__NAME_INDEX_JS:-"$ION__NAME_BRANCH.$ION__EXT_JS"}"
export ION__NAME_MAIN_CSS="${ION__NAME_MAIN_CSS:-"$ION__WORD_MAIN.$ION__EXT_CSS"}"
export ION__NAME_MAIN_JS="${ION__NAME_MAIN_JS:-"$ION__WORD_MAIN.$ION__EXT_JS"}"

export ION__MSG_DEV="${ION__MSG_DEV:-"developer"}"
export ION__MSG_COMMAND_NOT_FOUND="${ION__MSG_COMMAND_NOT_FOUND:-"command not found"}"
export ION__MSG_COMMAND_NOT_EXEC="${ION__MSG_COMMAND_NOT_EXEC:-"command not executable"}"
export ION__MSG_COMMAND_NOT_RECOGNISED="${ION__MSG_COMMAND_NOT_RECOGNISED:-"command not recognised"}"
export ION__MSG_INVALID_ENVIRONMENT="${ION__MSG_INVALID_ENVIRONMENT:-"an invalid option was given"}"
export ION__MSG_INVALID_REPLACEMENT="${ION__MSG_INVALID_REPLACEMENT:-"a sed replacement contains a newline"}"
export ION__MSG_LINKING_FILE="${ION__MSG_LINKING_FILE:-"unable to create a hard link; reverting to copying"}"
export ION__MSG_NOT_SLEEPING="${ION__MSG_NOT_SLEEPING:-"sub-second sleep seemingly not possible"}"
export ION__MSG_SLEEPING="${ION__MSG_SLEEPING:-"sleeping"}"
export ION__MSG_MAKING_DIR="${ION__MSG_MAKING_DIR:-"making a directory"}"
export ION__MSG_MAKING_FILE="${ION__MSG_MAKING_FILE:-"making a file"}"
export ION__MSG_MOVING_FILE="${ION__MSG_MOVING_FILE:-"moving a file"}"
export ION__MSG_NOT_POSIX="${ION__MSG_NOT_POSIX:-"the environment must be POSIX-compliant"}"
export ION__MSG_REMOVING_FILE="${ION__MSG_REMOVING_FILE:-"removing a file"}"
export ION__MSG_RUNNING_COMMAND="${ION__MSG_RUNNING_COMMAND:-"running command"}"
export ION__MSG_RUNNING_COMMAND_BG="${ION__MSG_RUNNING_COMMAND_BG:-"running background command"}"
export ION__MSG_RUNNING_COMMAND_MANY="${ION__MSG_RUNNING_COMMAND_MANY:-"running command list"}"
export ION__MSG_RUNNING_TESTS="${ION__MSG_RUNNING_TESTS:-"running tests"}"
export ION__MSG_NOTICED_CHANGE="${ION__MSG_NOTICED_CHANGE:-"one moment..."}"
export ION__MSG_BUILD_START="${ION__MSG_BUILD_START:-"building"}"
export ION__MSG_BUILD_STEP="${ION__MSG_BUILD_STEP:-"build step"}"
export ION__MSG_BUILD_ACTION="${ION__MSG_BUILD_ACTION:-"build action"}"
export ION__MSG_BUILD_IO_READ="${ION__MSG_BUILD_IO_READ:-"could not read the input"}"
export ION__MSG_BUILD_IO_WRITE="${ION__MSG_BUILD_IO_WRITE:-"could not write the input"}"
export ION__MSG_STARTING_SERVERS="${ION__MSG_STARTING_SERVERS:-"starting the servers"}"
export ION__MSG_STARTING_WATCHER="${ION__MSG_STARTING_WATCHER:-"starting the watcher"}"
export ION__MSG_STOPPING_WATCHER="${ION__MSG_STOPPING_WATCHER:-"stopping the watcher"}"
export ION__MSG_STOPPING_SERVERS="${ION__MSG_STOPPING_SERVERS:-"stopping the servers"}"
export ION__MSG_STOPPING_BUILD="${ION__MSG_STOPPING_BUILD:-"finished"}"

export ION__MSG_OPENING_FILE="${ION__MSG_OPENING_FILE:-"opening a file"}"
export ION__MSG_QUERYING_THE_INDEX="${ION__MSG_QUERYING_THE_INDEX:-"querying the index"}"
export ION__MSG_QUERY_FOUND_AN_ENTRY="${ION__MSG_QUERY_FOUND_AN_ENTRY:-"found a matching entry in the index"}"

export ION__ACTION_SOURCE="${ION__ACTION_SOURCE:-"$ION__WORD_SOURCE"}"
export ION__ACTION_INDEX="${ION__ACTION_INDEX:-"$ION__WORD_INDEX"}"
export ION__ACTION_META="${ION__ACTION_META:-"$ION__WORD_META"}"
export ION__ACTION_MESA="${ION__ACTION_MESA:-"$ION__WORD_MESA"}"
export ION__ACTION_HTML="${ION__ACTION_HTML:-"$ION__EXT_HTML"}"

export ION__VERB_IDENTITY="${ION__VERB_IDENTITY:-"identity"}"

export ION__TYPE_TRUE="${ION__TYPE_TRUE:-"true"}"
export ION__TYPE_FALSE="${ION__TYPE_FALSE:-"false"}"
export ION__TYPE_ARRAY="${ION__TYPE_ARRAY:-"array"}"
export ION__TYPE_OBJECT="${ION__TYPE_OBJECT:-"object"}"
export ION__TYPE_STRING="${ION__TYPE_STRING:-"string"}"
export ION__TYPE_NUMBER="${ION__TYPE_NUMBER:-"number"}"
export ION__TYPE_BOOLEAN="${ION__TYPE_BOOLEAN:-"boolean"}"
export ION__TYPE_NULL="${ION__TYPE_NULL:-"null"}"
export ION__TYPE_NAME="${ION__TYPE_NAME:-"name"}"
export ION__TYPE_TEXT="${ION__TYPE_TEXT:-"text"}"
export ION__TYPE_PATH="${ION__TYPE_PATH:-"path"}"
export ION__TYPE_PATHS="${ION__TYPE_PATHS:-"paths"}"
export ION__TYPE_REFERENCE="${ION__TYPE_REFERENCE:-"reference"}"
export ION__TYPE_RELATIONSHIP="${ION__TYPE_RELATIONSHIP:-"relationship"}"

export ION__META_TYPE="${ION__META_TYPE:-"type"}"
export ION__META_TYPE_DIRECTORY="${ION__META_TYPE_DIRECTORY:-"directory"}"
export ION__META_TYPE_FILE="${ION__META_TYPE_FILE:-"file"}"
export ION__META_TYPE_DATA="${ION__META_TYPE_DATA:-"data"}"
export ION__META_TYPE_DOCUMENT="${ION__META_TYPE_DOCUMENT:-"document"}"
export ION__META_TYPE_CODE="${ION__META_TYPE_CODE:-"code"}"
export ION__META_TYPE_IMAGE="${ION__META_TYPE_IMAGE:-"image"}"
export ION__META_TYPE_AUDIO="${ION__META_TYPE_AUDIO:-"audio"}"
export ION__META_TYPE_VIDEO="${ION__META_TYPE_VIDEO:-"video"}"
export ION__META_TYPE_MAP="${ION__META_TYPE_MAP:-"map"}"
export ION__META_TYPE_OBJECT="${ION__META_TYPE_OBJECT:-"object"}"
export ION__META_TYPE_FONT="${ION__META_TYPE_FONT:-"font"}"
export ION__META_TYPE_STYLE="${ION__META_TYPE_STYLE:-"style"}"
export ION__META_TYPE_SCRIPT="${ION__META_TYPE_SCRIPT:-"script"}"

export ION__META_SCAN="${ION__META_SCAN:-"scan"}"

export ION__META_PATH="${ION__META_PATH:-"path"}"
export ION__META_NAME="${ION__META_NAME:-"name"}"
export ION__META_EXTENSION="${ION__META_EXTENSION:-"extension"}"
export ION__META_DOMAIN="${ION__META_DOMAIN:-"domain"}"

export ION__META_HASH="${ION__META_HASH:-"hash"}"
export ION__META_STAMP="${ION__META_STAMP:-"stamp"}"
export ION__META_SIGNER="${ION__META_SIGNER:-"signer"}"
export ION__META_SIGNATURE="${ION__META_SIGNATURE:-"signature"}"
export ION__META_SALT="${ION__META_SALT:-"salt"}"

export ION__META_LOCATION="${ION__META_LOCATION:-"location"}"
export ION__META_ITERATION="${ION__META_ITERATION:-"iteration"}"
export ION__META_MODIFIED="${ION__META_MODIFIED:-"modified"}"
export ION__META_SIZE="${ION__META_SIZE:-"size"}"

export ION__META_WIDTH="${ION__META_WIDTH:-"width"}"
export ION__META_HEIGHT="${ION__META_HEIGHT:-"height"}"
export ION__META_DEPTH="${ION__META_DEPTH:-"depth"}"
export ION__META_LENGTH="${ION__META_LENGTH:-"length"}"

export ION__META_DIRECTION="${ION__META_DIRECTION:-"direction"}"
export ION__META_ENCODING="${ION__META_ENCODING:-"encoding"}"
export ION__META_ALPHABET="${ION__META_ALPHABET:-"alphabet"}"
export ION__META_LANGUAGE="${ION__META_LANGUAGE:-"language"}"
export ION__META_WORDMARK="${ION__META_WORDMARK:-"wordmark"}"
export ION__META_FLAG="${ION__META_FLAG:-"flag"}"
export ION__META_ICON="${ION__META_ICON:-"icon"}"

export ION__META_TITLE="${ION__META_TITLE:-"title"}"
export ION__META_DESCRIPTION="${ION__META_DESCRIPTION:-"description"}"
export ION__META_PUBLISHED="${ION__META_PUBLISHED:-"published"}"
export ION__META_AUTHORS="${ION__META_AUTHORS:-"authors"}"
export ION__META_ALBUM="${ION__META_ALBUM:-"album"}"
export ION__META_PUBLIC="${ION__META_PUBLIC:-"public"}"
export ION__META_COVER="${ION__META_COVER:-"cover"}"

export ION__META_CATEGORY="${ION__META_CATEGORY:-"category"}"
export ION__META_LABELS="${ION__META_LABELS:-"labels"}"

export ION__META_FROM="${ION__META_FROM:-"from"}"
export ION__META_PARENT="${ION__META_PARENT:-"parent"}"
export ION__META_RELATED="${ION__META_RELATED:-"related"}"
export ION__META_PREVIOUSLY="${ION__META_PREVIOUSLY:-"previously"}"
export ION__META_REFERENCES="${ION__META_REFERENCES:-"references"}"
export ION__META_DEPENDENCIES="${ION__META_DEPENDENCIES:-"dependencies"}"
export ION__META_TRANSLATIONS="${ION__META_TRANSLATIONS:-"translations"}"
export ION__META_DERIVATIVES="${ION__META_DERIVATIVES:-"derivatives"}"

export ION__ATTR_CURRENT="${ION__ATTR_CURRENT:-"data-current"}"
export ION__ATTR_QUERY="${ION__ATTR_QUERY:-"data-query"}"
export ION__ATTR_MULTIPLE="${ION__ATTR_MULTIPLE:-"data-multiple"}"
export ION__ATTR_NESTED="${ION__ATTR_NESTED:-"data-nested"}"
export ION__ATTR_KEY="${ION__ATTR_KEY:-"data-key"}"
export ION__ATTR_TYPE="${ION__ATTR_TYPE:-"data-type"}"
export ION__ATTR_VALUE="${ION__ATTR_VALUE:-"data-value"}"
export ION__ATTR_NAME="${ION__ATTR_NAME:-"data-name"}"
export ION__ATTR_STATE="${ION__ATTR_STATE:-"data-state"}"

export ION__CLASS_INDEX="${ION__CLASS_INDEX:-"index"}"
export ION__CLASS_PAGE="${ION__CLASS_PAGE:-"page"}"
export ION__CLASS_WORD="${ION__CLASS_WORD:-"word"}"
export ION__CLASS_HEADER="${ION__CLASS_HEADER:-"header"}"
export ION__CLASS_FORM="${ION__CLASS_FORM:-"form"}"
export ION__CLASS_INPUT="${ION__CLASS_INPUT:-"input"}"
export ION__CLASS_MESSAGE="${ION__CLASS_MESSAGE:-"message"}"
export ION__CLASS_CHOICE="${ION__CLASS_CHOICE:-"choice"}"
export ION__CLASS_REQUIRED="${ION__CLASS_REQUIRED:-"-required"}"
export ION__CLASS_COMPONENT="${ION__CLASS_COMPONENT:-"component"}"
export ION__CLASS_STARTED="${ION__CLASS_STARTED:-"-started"}"
export ION__CLASS_NO_JS="${ION__CLASS_NO_JS:-"no-js"}"

export ION_BIN_SELF="${ION_BIN_SELF:-"$0"}"
export ION_BIN_FLOCK="${ION_BIN_FLOCK:-"flock"}"
export ION_BIN_FSWATCH="${ION_BIN_FSWATCH:-"fswatch"}"
export ION_BIN_CADDY="${ION_BIN_CADDY:-"caddy"}"
export ION_BIN_ESBUILD="${ION_BIN_ESBUILD:-"esbuild"}"
export ION_BIN_LN="${ION_BIN_LN:-"ln"}"
export ION_BIN_LUAC="${ION_BIN_LUAC:-"luac"}"
export ION_BIN_OPENSSL="${ION_BIN_OPENSSL:-"openssl"}"
export ION_BIN_PANDOC="${ION_BIN_PANDOC:-"pandoc"}"
export ION_BIN_RCLONE="${ION_BIN_RCLONE:-"rclone"}"
export ION_BIN_SHA256SUM="${ION_BIN_SHA256SUM:-"sha256sum"}"
export ION_BIN_SHA256="${ION_BIN_SHA256:-"sha256"}"
export ION_BIN_SHASUM="${ION_BIN_SHASUM:-"shasum"}"
export ION_BIN_SHELLCHECK="${ION_BIN_SHELLCHECK:-"shellcheck"}"
export ION_BIN_SSH="${ION_BIN_SSH:-"ssh"}"
export ION_BIN_TCPSERVER="${ION_BIN_TCPSERVER:-"tcpserver"}"
export ION_BIN_TIDY="${ION_BIN_TIDY:-}"
export ION_BIN_PARALLEL="${ION_BIN_PARALLEL:-parallel}"
export ION_BIN_STAT="${ION_BIN_STAT:-"stat"}"
export ION_BIN_FIND="${ION_BIN_FIND:-"bfs:find"}"
export ION_BIN_XARGS="${ION_BIN_XARGS:-xargs}"

export ION_BIN_STAT_BSD="${ION_BIN_STAT_BSD:-}"
export ION_BIN_STAT_GNU="${ION_BIN_STAT_GNU:-}"
export ION_BIN_FIND_GNU="${ION_BIN_FIND_GNU:-}"
export ION_BIN_XARGS_GNU="${ION_BIN_XARGS_GNU:-}"

export ION_DEV_URANDOM="${ION_DEV_URANDOM:-"/dev/urandom"}"

export ION_SERVE="${ION_SERVE:-2}"
export ION_SERVE_PORT="${ION_SERVE_PORT:-}"
export ION_SERVE_PRODUCTION="${ION_SERVE_PRODUCTION:-}"
export ION_SERVE_WWW="${ION_SERVE_WWW:-}"

export ION_WATCH="${ION_WATCH:-}"
export ION_WATCH_CLEAR="${ION_WATCH_CLEAR:-}"
export ION_WATCH_THROTTLE="${ION_WATCH_THROTTLE:-0.1}"
export ION_WATCH_DEBOUNCE="${ION_WATCH_DEBOUNCE:-0.1}"
export ION_WATCH_POLLING="${ION_WATCH_POLLING:-}"

export ION_SPIN="${ION_SPIN:-}"
export ION_SPIN_START="${ION_SPIN_START:-}"
export ION_SPIN_INTERVAL="${ION_SPIN_INTERVAL:-60}"

export ION_BUILD="${ION_BUILD:-}"
export ION_BUILD_STEP="${ION_BUILD_STEP:-}"
export ION_BUILD_CURRENT="${ION_BUILD_CURRENT:-}"
export ION_BUILD_PREVIOUS="${ION_BUILD_PREVIOUS:-}"
export ION_BUILD_INITIAL="${ION_BUILD_INITIAL:-1}"

export ION_DERIVE_SCRIPT="${ION_DERIVE_SCRIPT:-1}"
export ION_DERIVE_SCRIPT_GLOBAL="${ION_DERIVE_SCRIPT_GLOBAL:-1}"
export ION_DERIVE_STYLE="${ION_DERIVE_STYLE:-1}"
export ION_DERIVE_STYLE_GLOBAL="${ION_DERIVE_STYLE_GLOBAL:-1}"
export ION_DERIVE_KNOWNS="${ION_DERIVE_KNOWNS:-1}"
export ION_DERIVE_UNKNOWNS="${ION_DERIVE_UNKNOWNS:-1}"
export ION_DERIVE_META="${ION_DERIVE_META:-1}"
export ION_DERIVE_MESA="${ION_DERIVE_MESA:-1}"
export ION_DERIVE_HTML="${ION_DERIVE_HTML:-1}"

export ION_INBOX="${ION_INBOX:-}"
export ION_INBOX_PORT="${ION_INBOX_PORT:-8000}"
export ION_INBOX_RATES="${ION_INBOX_RATES:-8192}"

export ION_LINK_PREFIX="${ION_LINK_PREFIX:-"."}"
export ION_LINK_PROTOCOL="${ION_LINK_PROTOCOL:-}"
export ION_LINK_DOMAIN="${ION_LINK_DOMAIN:-1}"
export ION_LINK_TRIM="${ION_LINK_TRIM:-1}"

export ION_EXTRACT_MAXIMUM="${ION_EXTRACT_MAXIMUM:-160}"
export ION_EXTRACT_SUFFIX="${ION_EXTRACT_SUFFIX:-"…"}"

export ION_SOURCE="${ION_SOURCE:-}"
export ION_SOURCE_STYLES="${ION_SOURCE_STYLES:-}"
export ION_SOURCE_SCRIPTS="${ION_SOURCE_SCRIPTS:-}"

export ION_FILTER_PATH="${ION_FILTER_PATH:-}"
export ION_FILTER_TARGET="${ION_FILTER_TARGET:-}"

export ION_START_ID="${ION_START_ID:-0}"
export ION_START_PRE="${ION_START_PRE:-"env"}"
export ION_START_POST="${ION_START_POST:-}"
export ION_START_ARGS="${ION_START_ARGS:-}"

export ION_DOMAIN="${ION_DOMAIN:-"localhost"}"
export ION_SYNTAX="${ION_SYNTAX:-"monochrome"}"
export ION_COGNATES="${ION_COGNATES:-"inventori:inventory"}"

export ION_TEMP="${ION_TEMP:-"${TMPDIR:-/tmp}"}"
export ION_TEST="${ION_TEST:-}"
export ION_WORDS="${ION_WORDS:-}"

export ION_VOLUME="${ION_VOLUME:-3}"
export ION_MINIFY="${ION_MINIFY:-0}"
export ION_PARALLEL="${ION_PARALLEL:-0}"
export ION_CLUSTER="${ION_CLUSTER:-}"

export ION_INPUT="${ION_INPUT:-}"
export ION_MIRRORS="${ION_MIRRORS:-}"

TAB=
NEWLINE=
CARRIAGE=

SALT=
STARTED=
START_PID=

SERVER_PID=
SERVER_STARTED=

WATCHER_PID_INPUT=
WATCHER_PID_SOURCE=

BUILD_TEMP=
BUILD_COUNT=0

TEMP_SED=
TEMP_BLANK=
TEMP_WATCH_LOCK=
TEMP_WATCH_STREAM=
TEMP_SERVER_CONFIG=
TEMP_FILTER_EMPTY=
TEMP_FILTER_TEST=
TEMP_FILTER_EXTRACT=
TEMP_FILTER_META=
TEMP_FILTER_DOCUMENT=
TEMP_TEMPLATE_JSON=
TEMP_TEMPLATE_HTML=
TEMP_SOURCE_STYLES=
TEMP_SOURCE_SCRIPTS=

SHARED_LUA="$(cat <<'EOF'
function env(name, default)
	local found = os.getenv("ION_"..name)
	found = found and #found > 0 and found or default
	assert(found ~= nil, name.." not given")
	return found
end

function envn(name, default)
	return tonumber(env(name, default))
end

function envb(name, default)
	return envn(name, default) == 1
end

__ERROR_PREFIX_SUB = env("__ERROR_PREFIX_SUB")
__ERROR_PREFIX_SUBL = env("__ERROR_PREFIX_SUBL")
__ERROR_PREFIX_SUBR = env("__ERROR_PREFIX_SUBR")
__ERROR_INFIX_MAIN = env("__ERROR_INFIX_MAIN")
__ERROR_INFIX_SUB = env("__ERROR_INFIX_SUB")

__QUERY_PHRASE = env("__QUERY_PHRASE")
__QUERY_CLAUSE = env("__QUERY_CLAUSE")
__QUERY_SENTENCE = env("__QUERY_SENTENCE")
__QUERY_PARAGRAPH = env("__QUERY_PARAGRAPH")

__QUERY_SUBJECT = envn("__QUERY_SUBJECT", 1)
__QUERY_VERB = envn("__QUERY_VERB", 2)

__QUERY_ALL = env("__QUERY_ALL")
__QUERY_SEPARATOR = env("__QUERY_SEPARATOR")
__QUERY_NESTED_LEFT = env("__QUERY_NESTED_LEFT")
__QUERY_NESTED_RIGHT = env("__QUERY_NESTED_RIGHT")

__TITLE_SEPARATOR = env("__TITLE_SEPARATOR")
__TYPE_SEPARATOR = env("__TYPE_SEPARATOR")

_WORD_INDEX = env("_WORD_INDEX")
_WORD_ERROR = env("_WORD_ERROR")
_WORD_INFO = env("_WORD_INFO")
_WORD_NOTE = env("_WORD_NOTE")

_EXT_JSON = env("_EXT_JSON")
_EXT_HTML = env("_EXT_HTML")

_NAME_ROOT = env("_NAME_ROOT")
_NAME_BRANCH = env("_NAME_BRANCH")
_NAME_INDEX_JS = env("_NAME_INDEX_JS")
_NAME_INDEX_CSS = env("_NAME_INDEX_CSS")

_MSG_DEV = env("_MSG_DEV")
_MSG_OPENING_FILE = env("_MSG_OPENING_FILE")
_MSG_QUERYING_THE_INDEX = env("_MSG_QUERYING_THE_INDEX")
_MSG_QUERY_FOUND_AN_ENTRY = env("_MSG_QUERY_FOUND_AN_ENTRY")

_VERB_IDENTITY = env("_VERB_IDENTITY")

_TYPE_NULL = env("_TYPE_NULL")
_TYPE_TRUE = env("_TYPE_TRUE")
_TYPE_FALSE = env("_TYPE_FALSE")
_TYPE_BOOLEAN = env("_TYPE_BOOLEAN")
_TYPE_NUMBER = env("_TYPE_NUMBER")
_TYPE_STRING = env("_TYPE_STRING")
_TYPE_NAME = env("_TYPE_NAME")
_TYPE_TEXT = env("_TYPE_TEXT")
_TYPE_PATH = env("_TYPE_PATH")
_TYPE_PATHS = env("_TYPE_PATHS")
_TYPE_REFERENCE = env("_TYPE_REFERENCE")
_TYPE_RELATIONSHIP = env("_TYPE_RELATIONSHIP")
_TYPE_OBJECT = env("_TYPE_OBJECT")
_TYPE_ARRAY = env("_TYPE_ARRAY")

_META_TYPE = env("_META_TYPE")
_META_TYPE_DIRECTORY = env("_META_TYPE_DIRECTORY")
_META_TYPE_DOCUMENT = env("_META_TYPE_DOCUMENT")

_META_SCAN = env("_META_SCAN")

_META_PATH = env("_META_PATH")
_META_NAME = env("_META_NAME")
_META_EXTENSION = env("_META_EXTENSION")
_META_DOMAIN = env("_META_DOMAIN")

_META_HASH = env("_META_HASH")
_META_STAMP = env("_META_STAMP")
_META_SIGNER = env("_META_SIGNER")
_META_SIGNATURE = env("_META_SIGNATURE")
_META_SALT = env("_META_SALT")

_META_LOCATION = env("_META_LOCATION")
_META_ITERATION = env("_META_ITERATION")
_META_MODIFIED = env("_META_MODIFIED")
_META_SIZE = env("_META_SIZE")

_META_WIDTH = env("_META_WIDTH")
_META_HEIGHT = env("_META_HEIGHT")
_META_DEPTH = env("_META_DEPTH")
_META_LENGTH = env("_META_LENGTH")

_META_DIRECTION = env("_META_DIRECTION")
_META_ENCODING = env("_META_ENCODING")
_META_ALPHABET = env("_META_ALPHABET")
_META_LANGUAGE = env("_META_LANGUAGE")
_META_WORDMARK = env("_META_WORDMARK")
_META_FLAG = env("_META_FLAG")
_META_ICON = env("_META_ICON")

_META_TITLE = env("_META_TITLE")
_META_DESCRIPTION = env("_META_DESCRIPTION")
_META_PUBLISHED = env("_META_PUBLISHED")
_META_CATEGORY = env("_META_CATEGORY")
_META_LABELS = env("_META_LABELS")
_META_AUTHORS = env("_META_AUTHORS")
_META_ALBUM = env("_META_ALBUM")
_META_PUBLIC = env("_META_PUBLIC")
_META_COVER = env("_META_COVER")

_META_FROM = env("_META_FROM")
_META_PARENT = env("_META_PARENT")
_META_RELATED = env("_META_RELATED")
_META_PREVIOUSLY = env("_META_PREVIOUSLY")
_META_REFERENCES = env("_META_REFERENCES")
_META_DEPENDENCIES = env("_META_DEPENDENCIES")
_META_TRANSLATIONS = env("_META_TRANSLATIONS")
_META_DERIVATIVES = env("_META_DERIVATIVES")

_ATTR_CURRENT = env("_ATTR_CURRENT")
_ATTR_QUERY = env("_ATTR_QUERY")
_ATTR_MULTIPLE = env("_ATTR_MULTIPLE")
_ATTR_NESTED = env("_ATTR_NESTED")
_ATTR_KEY = env("_ATTR_KEY")
_ATTR_TYPE = env("_ATTR_TYPE")
_ATTR_VALUE = env("_ATTR_VALUE")
_ATTR_NAME = env("_ATTR_NAME")

_CLASS_INDEX = env("_CLASS_INDEX")
_CLASS_WORD = env("_CLASS_WORD")
_CLASS_PAGE = env("_CLASS_PAGE")
_CLASS_FORM = env("_CLASS_FORM")
_CLASS_HEADER = env("_CLASS_HEADER")
_CLASS_REQUIRED = env("_CLASS_REQUIRED")
_CLASS_COMPONENT = env("_CLASS_COMPONENT")
_CLASS_STARTED = env("_CLASS_STARTED")
_CLASS_NO_JS = env("_CLASS_NO_JS")

START_ID = envn("START_ID")

BIN_SELF = env("BIN_SELF")

LINK_PROTOCOL = envb("LINK_PROTOCOL", false)
LINK_DOMAIN = envb("LINK_DOMAIN")
LINK_PREFIX = env("LINK_PREFIX")
LINK_TRIM = envb("LINK_TRIM")

DERIVE_SCRIPT = envb("DERIVE_SCRIPT")
DERIVE_STYLE = envb("DERIVE_STYLE")

EXTRACT_SUFFIX = env("EXTRACT_SUFFIX", "")
EXTRACT_MAXIMUM = envn("EXTRACT_MAXIMUM", 0)

COGNATES = env("COGNATES")
TESTING = envb("TEST", false)
VOLUME = envn("VOLUME", 3)
WORDS = envb("WORDS", false)

FILTER_PATH = env("FILTER_PATH", false)
FILTER_TARGET = env("FILTER_TARGET", false)

BUILD_CURRENT = env("BUILD_CURRENT", false)

CACHED_COGNATES = nil
CACHED_INDEX = nil

REFERENCES = {}

Query = {}
Index = {}

function is_null(value)
	return type(value) == "nil"
end

function is_boolean(value)
	return type(value) == "boolean"
end

function is_number(value)
	return type(value) == "number"
end

function is_string(value)
	return type(value) == "string"
end

function is_function(value)
	return type(value) == "function"
end

function is_userdata(value)
	return type(value) == "userdata"
end

function is_table(value)
	local pandoc_type = pandoc.utils.type(value)
	return pandoc_type ~= "Inlines" and
	       pandoc_type ~= "Blocks" and
	       type(value) == "table"
end

function is_array(value)
	-- from: stackoverflow.com/a/25709704

	if pandoc.utils.type(value) == "List" then
		return #value > 0
	elseif is_table(value) and #value > 0 then
		local i = 0

		for _ in pairs(value) do
			i = i + 1
			if value[i] == nil then
				return false
			end
		end

		return true
	else
		return false
	end
end

function is_array__test()
	local empty = {}
	local array = {1,2,3}
	local object = {x=1, y=2, z=3}

	assert(not is_array(empty))
	assert(is_array(array))
	assert(not is_array(object))
end

function is_object(value)
	return is_table(value) and (next(value) ~= nil and not is_array(value))
end

function is_object__test()
	local empty = {}
	local array = {1, 2, 3}
	local object = {x=1, y=2, z=3}

	assert(not is_object(empty))
	assert(is_object(object))
	assert(not is_object(array))
end

function is_text(element)
	local pandoc_type = pandoc.utils.type(element)
	return pandoc_type == "Inlines" or
	       pandoc_type == "Inline" or
	       pandoc_type == "Blocks" or
	       pandoc_type == "Block" or
	       pandoc_type == "Meta"
end

function is_numbery(value)
	return value and is_number(value) and value ~= 0
end

function is_stringy(value)
	return value and is_string(value) and #value > 0
end

function is_tabley(value)
	return value and is_table(value) and next(value) ~= nil
end

function is_truthy(value)
	local truthy = not not value

	if truthy and is_number(value) then
		truthy = is_numbery(value)
	elseif truthy and is_string(value) then
		truthy = is_stringy(value)
	elseif truthy and is_table(value) then
		truthy = is_tabley(value)
	end

	return truthy
end

function json_decode(str, pandoc_types)
	return pandoc.json.decode(str, pandoc_types or false)
end

function json_encode(obj)
	return pandoc.json.encode(obj)
end

function json_encode_debug(value)
	if is_string(value) then
		return value
	elseif TESTING then
		return json_encode(value)
	else
		return tostring(value)
	end
end

function printe(label, ...)
	local args = table.pack(...)
	local started = false
	local err = ""

	local prefix = __ERROR_PREFIX_SUB

	if START_ID ~= 1 then
		prefix = prefix..__ERROR_PREFIX_SUBL..START_ID..__ERROR_PREFIX_SUBR
	end

	for i=1, args.n do
		local arg = args[i]

		if not started then
			err = prefix..label..__ERROR_INFIX_MAIN
			started = true
		else
			err = err..__ERROR_INFIX_SUB
		end

		err = err..json_encode_debug(arg)
	end

	if started then
		io.stderr:write(err.."\n")
		io.stderr:flush()
	end
end

function exit(...)
	if VOLUME > 0 then
		printe(_WORD_ERROR, ...)
	end

	os.exit(1)
end

function note(...)
	if VOLUME > 1 then
		printe(_WORD_NOTE, ...)
	end
end

function info(...)
	if VOLUME > 2 then
		printe(_WORD_INFO, ...)
	end
end

function table_copy(tbl)
	local tblm = getmetatable(tbl)
	local copy = {}

	for k, v in pairs(tbl) do
		if is_table(v) then
			copy[k] = table_copy(v)
		else
			copy[k] = v
		end
	end

	if tblm then
		setmetatable(copy, tblm)
	end

	return copy
end

function table_keys(tbl, comp)
	local keys = {}

	for k in pairs(tbl) do
		table.insert(keys, k)
	end

	table.sort(keys, comp)
	return keys
end

function table_keys__test()
	local object = {y=2, z=3, x=1}
	local keys = table_keys(object)

	assert(keys[1] == "x")
	assert(keys[2] == "y")
	assert(keys[3] == "z")
end

function table_values(tbl, comp, truthy)
	local keys = table_keys(tbl, comp)
	local values = {}

	for i, k in ipairs(keys) do
		local v = tbl[k]

		if not truthy or is_truthy(v) then
			table.insert(values, v)
		end
	end

	return values
end

function table_values__test()
	local object = {y=2, z=3, x=1}
	local values = table_values(object)

	assert(values[1] == 1)
	assert(values[2] == 2)
	assert(values[3] == 3)
end

function table_get_table(tbl, key)
	if is_table(tbl) and is_table(tbl[key]) then
		return tbl[key]
	else
		return {}
	end
end

function tables_get(key, ...)
	local tbls = table.pack(...)

	for i=1, tbls.n do
		local tbl = tbls[i]
		local value = tbl and tbl[key]

		if value then
			return value
		end
	end
end

function array_contains(array, target)
	local found = nil

	for i, v in ipairs(array) do
		if v == target then
			found = i
			break
		end
	end

	return found
end

function array_contains__test()
	local array = {1, 2, 3}

	assert(array_contains(array, 2))
	assert(not array_contains(array, 4))
	assert(not array_contains(array, "hello"))
end

function array_deduplicated(array)
	local fixed = {}

	for i, v in ipairs(array) do
		fixed[v] = true
	end

	return table_keys(fixed)
end

function array_deduplicated__test()
	local array = {3, 2, 1, 2}
	local fixed = array_deduplicated(array)

	assert(#fixed == 3)
	assert(fixed[1] == 1)
	assert(fixed[2] == 2)
	assert(fixed[3] == 3)
end

function string_trim(str)
	return str and str:gsub("^%s*(.-)%s*$", "%1")
end

function string_trim_lr(str, l, r)
	return str:gsub("^%s*"..l.."?%s*(.-)%s*"..(r or l).."?%s*$", "%1")
end

function string_find(str, pattern, plain)
	return str:find(pattern, 1, plain) ~= nil
end

function string_find_plain(str, pattern)
	return string_find(str, pattern, true)
end

function string_replace(str, pattern, repl, n)
	return str:gsub(pattern, repl, n)
end

function string_escape(s)
	-- see: lua.org/pil/20.2.html
	--                 ( ) . % + - * ? [   ^ $
	return s:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1")
end

function string_split(str, pattern, f, strip, plain)
	str = strip and string_trim(str) or str or ""

	local split = {}
	local i = 1

	repeat
		local s, e = str:find(pattern, i, plain)
		local value = str:sub(i, s and s-1 or nil)

		if strip then
			value = string_trim(value)
		end

		if f then
			value = f(value, #split+1)
		end

		if #value > 0 then
			table.insert(split, value)
		end

		i = e and e+1
	until not i or i > #str

	return split
end

function string_split_plain(str, pattern, f, strip)
	return string_split(str, pattern, f, strip, true)
end

function string_split_plainer(str, pattern, f)
	return string_split_plain(str, pattern, f, true)
end

function string_split__test()
	local unsplit_1 = ""
	local split_1 = string_split_plain(unsplit_1, ".")
	local stripped_1 = string_split_plainer(unsplit_1, ".")

	assert(#split_1 == 0)
	assert(#stripped_1 == 0)

	local unsplit_2 = " "
	local split_2 = string_split_plain(unsplit_2, ".")
	local stripped_2 = string_split_plainer(unsplit_2, ".")

	assert(#split_2 == 1)
	assert(#stripped_2 == 0)
	assert(split_2[1] == " ")

	local unsplit_3 = "  hello  "
	local split_3 = string_split_plain(unsplit_3, ".")
	local stripped_3 = string_split_plainer(unsplit_3, ".")

	assert(#split_3 == 1)
	assert(#stripped_3 == 1)
	assert(split_3[1] == "  hello  ")
	assert(stripped_3[1] == "hello")

	local unsplit_4 = "  hello  .  world  "
	local split_4 = string_split_plain(unsplit_4, ".")
	local stripped_4 = string_split_plainer(unsplit_4, ".")

	assert(#split_4 == 2)
	assert(#stripped_4 == 2)
	assert(split_4[1] == "  hello  ")
	assert(split_4[2] == "  world  ")
	assert(stripped_4[1] == "hello")
	assert(stripped_4[2] == "world")
end

function string_before(str, sep)
	local before = str:match("(.*)"..string_escape(sep))
	return before and #before > 0 and before or nil
end

function string_before__test()
	assert(string_before("/a/b", "/") == "/a")
	assert(string_before("/a/", "/") == "/a")
	assert(string_before("/a", "/") == nil)
	assert(string_before("/", "/") == nil)
	assert(string_before("a/b", "/") == "a")
	assert(string_before("a/", "/") == "a")
	assert(string_before("a", "/") == nil)
	assert(string_before("", "/") == nil)
end

function string_after(str, sep)
	local after = str:match(".*"..string_escape(sep).."(.*)")
	return after and #after > 0 and after or nil
end

function string_after__test()
	assert(string_after("/a/b", "/") == "b")
	assert(string_after("/a/", "/") == nil)
	assert(string_after("/a", "/") == "a")
	assert(string_after("/", "/") == nil)
	assert(string_after("a/b", "/") == "b")
	assert(string_after("a/", "/") == nil)
	assert(string_after("a", "/") == nil)
	assert(string_after("", "/") == nil)
end

function string_start(whole, part)
	return whole:sub(1, #part) == part
end

function string_end(whole, part)
	return whole:sub(-#part) == part
end

function extension_is_document(extension)
	local extensions = {
		txt = true,
		md = true,
		markdown = true,
		asciidoc = true,
		textile = true,
		adoc = true,
		rst = true,
		t2t = true,
		dbk = true,
		tex = true,
		ms = true,
		odt = true,
		fodt = true,
		docx = true,
		rtf = true
	}

	return extensions[extension] ~= nil
end

function extension_mime(extension)
	local mimes = {
		gif = "image/gif",
		png = "image/png",
		svg = "image/svg+xml",
		ico = "image/x-icon"
	}

	return mimes[extension]
end

function extension_trim(extension)
	return string_trim_lr(extension, "%.")
end

function path_is_safe(str)
	local safe = str ~= nil
	safe = safe and str ~= ""
	safe = safe and not str:match("[\0\t\n\r\\*?$`\"'<>%(%)%[%]{}|&;:%%~]")
	return safe
end

function path_is_absolute(normal)
	return normal:sub(1, 1) == "/"
end

function path_is_relative(normal)
	return not path_is_absolute(normal)
end

function path_normal(path)
	local collapsed = path:gsub("/+", "/")
	local stripped = collapsed:gsub("^%./", "")
	return stripped:gsub("/$", "")
end

function path_parent(path)
	local normal = path_normal(path)
	return string_before(normal, "/")
end

function path_file(path)
	local normal = path_normal(path)
	return string_after(normal, "/") or normal
end

function path_file_parts(path)
	local file = path_file(path)
	return string_split_plain(file, ".")
end

function path_name(path)
	local parts = path_file_parts(path)
	return parts[1] or path
end

function path_ext_get(path)
	local parts = path_file_parts(path)
	table.remove(parts, 1)

	return table.concat(parts, ".")
end

function path_ext_set(path, extension)
	local parent = path_parent(path)
	local name = path_name(path)
	local base = parent or ""

	if name then
		if #base > 0 then
			base = base.."/"..name
		else
			base = name
		end

		if extension then
			base = base.."."..extension
		end
	end

	if path_is_absolute(path) and not path_is_absolute(base) then
		base = "/"..base
	end

	return base
end

function path_ext(path, extension)
	if extension ~= nil then
		return path_ext_set(path, extension)
	else
		return path_ext_get(path)
	end
end

function path_trim(path)
	return path:gsub("^/*(.-)/*$", "%1")
end

function path_trim_start(path)
	return path:gsub("^/*(.*)", "%1")
end

function path_trim_end(path)
	return path:gsub("/+$", "")
end

function path_split(normal)
	return string_split_plain(path_trim(normal), "/")
end

function path_join(...)
	local paths = table.pack(...)
	local joined = ""

	for i=1, paths.n do
		if paths[i] then
			if #joined > 0 then
				joined = path_trim_end(joined).."/"..path_trim_start(paths[i])
			else
				joined = paths[i]
			end
		end
	end

	return joined
end

function path_absolute(path)
	return path_is_absolute(path) and path or "/"..path
end

function path_resolve(normal)
	local is_absolute = path_is_absolute(normal)
	local unresolved = path_split(normal)
	local resolved = {}

	while #unresolved > 0 do
		local current = table.remove(unresolved, 1)

		if current == ".." then
			table.remove(resolved)
		elseif current ~= "." then
			table.insert(resolved, current)
		end
	end

	local path = path_join(table.unpack(resolved))
	return is_absolute and "/"..path or path
end

function path_resolve__test()
	assert(path_resolve("a") == "a")
	assert(path_resolve("/a") == "/a")
	assert(path_resolve("./a") == "a")
	assert(path_resolve("../a") == "a")
	assert(path_resolve("/a/./b/") == "/a/b")
	assert(path_resolve("/a/../b") == "/b")
	assert(path_resolve("/a/./../b/") == "/b")
	assert(path_resolve("/a/b/..") == "/a")
	assert(path_resolve("/a/b/.") == "/a/b")
	assert(path_resolve("/a/b/") == "/a/b")
end

function path_rooted(given)
	local normal = path_normal(given)

	if path_is_relative(normal) then
		local parent = FILTER_PATH and path_parent(FILTER_PATH)

		if parent then
			normal = parent.."/"..normal
		else
			normal = "/"..normal
		end
	end

	return path_resolve(normal)
end

function path_is_document(path)
	return extension_is_document(path_ext(path))
end

function file_open(path, write, binary)
	info(_MSG_OPENING_FILE, path)
	local mode = (write and "w" or "r")..(binary and "b" or "")
	return io.open(path, mode)
end

function file_close(file)
	return file:close()
end

function file_flush(file)
	return file:flush()
end

function file_seek(file, ...)
	return file:seek(...)
end

function file_reset(file)
	return file_seek(file, "set", 0)
end

function file_read(file, amount)
	if is_string(file) then
		local f = file_open(file)

		if f then
			local content = file_read(f, amount)
			file_close(f)
			return content
		end
	else
		return file:read(amount or "a")
	end
end

function file_decode(file, amount)
	return json_decode(file_read(file, amount))
end

function file_lines(file)
	file_reset(file)
	return file:lines()
end

function file_write(file, ...)
	if is_string(file) then
		local f = file_open(file, true)

		if f then
			local r = file_write(f, ...)
			file_close(f)
			return r
		end
	else
		return file:write(...) and true or false
	end
end

function file_copy(src, dst)
	-- see: forum.cockos.com/showthread.php?t=244397

	local src_file = file_open(src, false, true)
	local dst_file = file_open(dst, true, true)
	local src_size, dst_size = 0, 0

	if src_file and dst_file then
		while true do
			local block = file_read(src_file, 2^13)

			if not block then
				src_size = file_seek(src_file, "end")
				break
			end

			if not file_write(dst_file, block) then
				break
			end
		end

		dst_size = file_seek(dst_file, "end")

		file_close(src_file)
		file_close(dst_file)

		return src_size == dst_size
	end
end

function location_is_all(location)
	return location == __QUERY_ALL
end

function location_is_self(location)
	return not location or #location == 0 or location == FILTER_PATH
end

function location_is_multiple(location)
	return string_end(location, "/")
end

function location_is_location(location)
	return string_start(location, "/")
end

function location_normal(location)
	local self = location_is_self(location)
	return self and path_rooted(FILTER_PATH) or path_rooted(location)
end

function link_split_anchor(link)
	local split = string_split_plain(link, "#")
	return split[1], is_stringy(split[2]) and split[2]
end

function link_join_anchor(path, anchor)
	return path.."#"..anchor
end

function link_is_anchor(link)
	return string_start(link, "#")
end

function link_is_external(link)
	return string_find(link, "^[%w_-]+:")
end

function link_trim_start(link)
	return link:gsub("^/+", "")
end

function link_trim_end(link)
	return link:gsub("/+$", "")
end

function link_join(a, b, double)
	local atrim = a and link_trim_end(a)
	local btrim = b and link_trim_start(b)

	if is_stringy(atrim) and is_stringy(btrim) then
		return atrim..(double and "//" or "/")..btrim
	elseif is_stringy(atrim) then
		return atrim
	else
		return btrim
	end
end

function link_fix(link)
	local domain = meta(_META_DOMAIN)

	if is_stringy(LINK_PREFIX) then
		link = link_join(LINK_PREFIX, link)
	end

	if is_stringy(domain) and LINK_DOMAIN then
		link = link_join(domain, link)
	end

	if LINK_PROTOCOL and FILTER_TARGET == _EXT_HTML then
		link = link_join("http:", link, true)
	end

	if LINK_TRIM then
		if path_is_document(link) then
			link = path_ext(link, false)
		end
	end

	return link
end

function link_normal(link, reference, fix)
	local is_external = link_is_external(link)
	local is_anchor = link_is_anchor(link)
	local is_current = false
	local anchor = nil

	if is_anchor then
		return link, true, false, is_anchor
	end

	link, anchor = link_split_anchor(link)

	if not is_external then
		link = path_rooted(link)
		is_current = link == FILTER_PATH
	end

	if reference ~= false then
		table.insert(REFERENCES, link)
	end

	if fix ~= false then
		link = link_fix(link)
	end

	if anchor then
		link = link_join_anchor(link, anchor)
	end

	return link, is_current, is_external, is_anchor
end

function subtype_join(...)
	return table.concat(table.pack(...), __TYPE_SEPARATOR)
end

function subtype_split(subtype)
	return subtype and string_split_plain(subtype, __TYPE_SEPARATOR) or {}
end

function subtype_is_boolean(subtype)
	return subtype == _TYPE_BOOLEAN
end

function subtype_is_number(subtype)
	return subtype == _TYPE_NUMBER
end

function subtype_is_string(subtype)
	return subtype == _TYPE_STRING or
	       subtype == _TYPE_PATH or
	       subtype == _TYPE_PATHS or
	       subtype == _TYPE_REFERENCE or
	       subtype == _TYPE_RELATIONSHIP
end

function subtype_is_path(subtype)
	return subtype == _TYPE_PATH or
	       subtype == _TYPE_REFERENCE or
	       subtype == _TYPE_RELATIONSHIP
end

function subtype_is_paths(subtype)
	return subtype == _TYPE_PATHS
end

function subtype_is_reference(subtype)
	return subtype == _TYPE_REFERENCE
end

function subtype_is_relationship(subtype)
	return subtype == _TYPE_RELATIONSHIP
end

function subtype_is_object(subtype)
	return subtype == _TYPE_OBJECT
end

function subtype_is_array(subtype)
	return subtype == _TYPE_ARRAY
end

function subtype_is_collection(subtype)
	return subtype_is_object(subtype) or
	       subtype_is_array(subtype)
end

function subtype_object(subtype)
	return subtype_join(_TYPE_OBJECT, subtype)
end

function subtype_array(subtype)
	return subtype_join(_TYPE_ARRAY, subtype)
end

function subtype_plural(subtype)
	local subtypes = subtype_split(subtype)

	if #subtypes > 1 then
		table.remove(subtypes)
		return table.concat(subtypes, __TYPE_SEPARATOR)
	elseif subtypes[1] and subtype_is_collection(subtypes[1]) then
		return subtypes[1]
	end
end

function subtype_single(subtype)
	local subtypes = subtype_split(subtype)

	if #subtypes > 1 then
		return subtypes[#subtypes]
	elseif subtypes[1] and not subtype_is_collection(subtypes[1]) then
		return subtypes[1]
	end
end

function decode_array(str, f)
	local lines = {}

	if str then
		for s in str:gmatch("[^\r\n]+") do
			if f then
				s = f(s)
			end

			table.insert(lines, s)
		end
	end

	return lines
end

function decode_paths_array(lines)
	return decode_array(lines, function(line)
		return string_split_plainer(line, ":")
	end)
end

function decode_cognates()
	local cognates = decode_paths_array(COGNATES)
	local decoded = {}

	for _, cognate in ipairs(cognates) do
		local k = cognate[1]
		local v = cognate[2]

		if k and v then
			decoded[k] = v
		end
	end

	return decoded
end

function translate(word)
	if not CACHED_COGNATES then
		CACHED_COGNATES = decode_cognates()
	end

	return CACHED_COGNATES[word] or word
end

function merge(a, b, _)
	return b or a
end

function merge__test()
	assert(merge(2, 1, _TYPE_NUMBER) == 1)
end

function phrase_normal(phrase, i)
	local map_f = (i == __QUERY_VERB or i == __QUERY_SUBJECT) and translate
	return string_split_plainer(phrase, __QUERY_PHRASE, map_f)
end

function phrase_find(phrase, entry)
	for i, word in ipairs(phrase) do
		entry = is_table(entry) and entry[word] or nil

		if not entry then
			break
		end
	end

	return entry
end

function verb_list()
	return {
		[_VERB_IDENTITY] = function(value)
			return value
		end
	}
end

function verb_find(verb)
	return phrase_find(verb or {_VERB_IDENTITY}, verb_list())
end

function verb_apply(verb, subject, objects, entry)
	local agent = phrase_find(subject, entry)
	local f = verb_find(verb)

	if agent and f then
		return f(agent, objects, entry)
	end
end

function clause_normal(clause)
	local objects = string_split_plainer(clause, __QUERY_CLAUSE, phrase_normal)
	local subject = nil
	local verb = nil

	if __QUERY_VERB > __QUERY_SUBJECT then
		subject = table.remove(objects, __QUERY_SUBJECT)
		verb = table.remove(objects, __QUERY_VERB-1)
	else
		verb = table.remove(objects, __QUERY_VERB)
		subject = table.remove(objects, __QUERY_SUBJECT-1)
	end

	table.insert(objects, 1, subject)
	table.insert(objects, 1, verb)

	return objects
end

function clause_evaluate(clause, entry)
	local objects = table_copy(clause)
	local verb = table.remove(objects, 1)
	local subject = table.remove(objects, 1)
	return verb_apply(verb, subject, objects, entry)
end

function sentence_normal(sentence)
	return string_split_plainer(sentence, __QUERY_SENTENCE, clause_normal)
end

function sentence_evaluate(sentence, entry)
	local result = nil

	for i, clause in ipairs(sentence) do
		result = clause_evaluate(clause, entry)

		if not result then
			return false
		end
	end

	return result
end

function paragraph_normal(conditions)
	return string_split_plainer(conditions, __QUERY_PARAGRAPH, sentence_normal)
end

function paragraph_evaluate(conditions, entry)
	local result = #conditions == 0 and entry or nil

	for i, sentence in ipairs(conditions) do
		result = sentence_evaluate(sentence, entry)

		if result then
			break
		end
	end

	return result
end

function convert_to_span(content, attributes)
	return pandoc.Span(content, attributes)
end

function convert_to_link(content, attributes, key)
	local reference = true
	local title = nil
	local fix = true

	local target, current = link_normal(key, reference, fix)

	if attributes then
		attributes[_ATTR_NAME] = path_name(target)
		attributes[_ATTR_CURRENT] = current and "" or nil
	end

	return pandoc.Link(content, target, title, attributes)
end

function convert_single(key, value, link)
	local attributes = {}
	local content = {}
	local data = nil
	local kind = ""

	if is_array(value) then
		kind = _TYPE_ARRAY
		for i, v in ipairs(value) do
			table.insert(content, convert_single(i, v, false))
		end
	elseif is_table(value) then
		kind = _TYPE_OBJECT
		for k, v in pairs(value) do
			table.insert(content, convert_single(k, v, false))
		end
	elseif is_string(value) then
		kind = _TYPE_STRING
		data = value
		content = ""
	elseif is_number(value) then
		kind = _TYPE_NUMBER
		data = tostring(value)
		content = ""
	elseif is_boolean(value) then
		kind = _TYPE_BOOLEAN
		data = value and _TYPE_TRUE or _TYPE_FALSE
		content = ""
	elseif is_null(value) then
		kind = _TYPE_NULL
		data = ""
		content = ""
	end

	attributes[_ATTR_KEY] = key or nil
	attributes[_ATTR_TYPE] = kind
	attributes[_ATTR_VALUE] = data

	if link then
		return convert_to_link(content, attributes, key)
	else
		return convert_to_span(content, attributes)
	end
end

function convert_to_nest(results)
	local nested = {}

	for path in pairs(results) do
		local parent = path_parent(path)
		local ancestry = parent and path_split(parent) or {}
		local current = nested

		for i, name in ipairs(ancestry) do
			if not current[name] then
				current[name] = {}
			end

			current = current[name]
		end

		table.insert(current, path)
	end

	return nested
end

function convert_from_nest(results, attributes, nested, parent)
	if is_table(nested) then
		local names = table_keys(nested)
		local converted = {}

		for i, name in ipairs(names) do
			local value = convert_from_nest(results, nil, nested[name], name)
			table.insert(converted, value)
		end

		attributes = attributes or {}
		attributes[_ATTR_TYPE] = _META_TYPE_DIRECTORY
		attributes[_ATTR_NAME] = parent or ""

		return convert_to_span(converted, attributes)
	elseif is_string(nested) then
		return results[nested]
	end
end

function convert_nested(results, attributes)
	local nested = convert_to_nest(results)
	return convert_from_nest(results, attributes, nested)
end

function convert_flat(results, attributes)
	local values = table_values(results)
	return convert_to_span(values, attributes)
end

function convert_multiple(results, attributes, nest)
	if nest then
		return convert_nested(results, attributes)
	else
		return convert_flat(results, attributes)
	end
end

function Query.is_nested(query)
	return string_find(query, "^%s*"..__QUERY_NESTED_LEFT.."%s*") and
	       string_find(query, "%s*"..__QUERY_NESTED_RIGHT.."%s*$")
end

function Query.trim(query, nested)
	if nested then
		return string_trim_lr(query, __QUERY_NESTED_LEFT, __QUERY_NESTED_RIGHT)
	else
		return string_trim(query)
	end
end

function Query.is_split(query)
	return string_find_plain(query, __QUERY_SEPARATOR)
end

function Query.split(query)
	local split = string_split(query, "%s*"..__QUERY_SEPARATOR.."+%s*")
	return split[1], split[2]
end

function Query.from_table(options)
	options = setmetatable(options or {}, { __index = Query })

	options.raw = options.raw or ""
	options.kind = options.kind or nil
	options.path = location_normal(options.path)
	options.conditions = options.conditions or {}

	if options.multiple == nil then
		options.multiple = location_is_multiple(options.path)
	end

	if options.nested == nil then
		options.nested = false
	end

	if options.convert == nil then
		options.convert = false
	end

	if options.reference == nil then
		options.reference = true
	end

	return options
end

function Query.from_string(str, options)
	local nested = Query.is_nested(str)
	local query = Query.trim(str, nested)
	local path, conditions = "", ""

	if Query.is_split(query) then
		path, conditions = Query.split(query)
	elseif location_is_location(query) then
		path = query
	else
		conditions = query
	end

	options = options or {}
	options.path = options.path or path
	options.conditions = options.conditions or paragraph_normal(conditions)
	options.nested = options.nested or nested
	options.raw = options.raw or str

	return Query.from_table(options)
end

function Query.new(query, options)
	if is_string(query) then
		return Query.from_string(query, options)
	elseif is_table(query) then
		return Query.from_table(query)
	else
		return Query.from_table(options)
	end
end

function Query:input_stream(lines)
	return function()
		local line = lines()

		if line then
			local entry = json_decode(line)
			local path = entry and entry[_META_PATH]
			return entry, path
		end
	end
end

function Query:input_table(input)
	input = self.multiple and input or { [self.path] = input[self.path] }

	local paths = table_keys(input)
	local paths_it = ipairs(paths)
	local i = 0

	return function()
		local _, path = paths_it(paths, i)
		local entry = input[path]
		i = i + 1

		if path and entry then
			entry[_META_PATH] = entry[_META_PATH] or path
			return entry, path
		end
	end
end

function Query:input(input)
	input = input or {}

	if is_function(input) then
		return input
	elseif is_table(input) then
		if input.scan_file then
			return input:all()
		else
			return self:input_table(input)
		end
	elseif input then
		return self:input_stream(file_lines(input))
	end
end

function Query:output_table(output, entry, path)
	if self.convert then
		if self.reference then
			table.insert(REFERENCES, path)
		end

		entry = convert_single(path, entry, true)
	elseif output[path] then
		entry = merge(output[path], entry, _TYPE_OBJECT)
	end

	output[path] = entry
end

function Query:output_stream(output, entry, path)
	return file_write(output, json_encode(entry), "\n")
end

function Query:output(output, entry, path)
	info(_MSG_QUERY_FOUND_AN_ENTRY, path, entry)

	if is_table(output) then
		self:output_table(output, entry, path)
	elseif output then
		self:output_stream(output, entry, path)
	end
end

function Query:finish_table_single(output, attributes)
	local single = output[self.path]

	if self.convert then
		single = single or convert_to_span("")

		for k, v in pairs(attributes) do
			single.attributes[k] = v
		end
	end

	return single
end

function Query:finish_table_multiple(output, attributes)
	if self.convert then
		attributes[_ATTR_MULTIPLE] = ""
		attributes[_ATTR_NESTED] = self.nested and ""
		return convert_multiple(output, attributes, self.nested)
	else
		return output
	end
end

function Query:finish_table(output)
	local attributes = {}
	attributes[_ATTR_QUERY] = self.raw

	if self.multiple then
		return self:finish_table_multiple(output, attributes)
	else
		return self:finish_table_single(output, attributes)
	end
end

function Query:finish_stream(output)
	file_flush(output)
	return output
end

function Query:finish(output)
	if is_table(output) then
		return self:finish_table(output)
	elseif output then
		return self:finish_stream(output)
	end
end

function Query:match_path(entry, path)
	if self.multiple then
		return string_start(path, self.path)
	else
		return path == self.path
	end
end

function Query:match_kind(entry, path)
	return not self.kind or self.kind == entry[_META_TYPE]
end

function Query:match_evaluation(entry, path)
	return paragraph_evaluate(self.conditions, entry)
end

function Query:match(entry, path)
	return self:match_path(entry, path)
	   and self:match_kind(entry, path)
	   and self:match_evaluation(entry, path)
end

function Query:filter(input, output)
	info(_MSG_QUERYING_THE_INDEX, self.raw)

	input = self:input(input)
	output = output or {}

	for entry, path in input do
		local found = self:match(entry, path)

		if found then
			self:output(output, found, path)

			if path == self.path and not self.multiple then
				break
			end
		end
	end

	return self:finish(output)
end

function query(q, input, output, options)
	return Query.new(q, options):filter(input, output)
end

function query__test()

end

function Index:close()
	if self.scan_file then
		file_close(self.scan_file)
		self.scan_file = nil
	end
end

function Index.open(output)
	local self = setmetatable({}, { __index = Index })
	self.output = output
	return self
end

function Index.name_check(part)
	if is_stringy(part) and part:find("^[^/,]*$") and path_is_safe(part) and #part <= 64 then -- todo: 64 should be env
		return part
	end
end

function Index.name_construct(key, kind)
	key = Index.name_check(key)
	kind = Index.name_check(kind)
	return key and kind and key..","..kind
end

function Index.name_deconstruct(name)
	local parts = string_split_plain(name, ",")
	local key = Index.name_check(parts[1])
	local kind = Index.name_check(parts[2])
	return kind and key, kind
end

function Index:file_path(path, key, kind)
	local name = Index.name_construct(key, kind)
	return name and path_join(self.output, _NAME_ROOT, path, name)
end

function Index:file_open_internal(write, binary, ...)
	local path = self:file_path(...)
	return path and file_open(path, write, binary)
end

function Index:file_open(...)
	return self:file_open_internal(false, false, ...)
end

function Index:file_openw(...)
	return self:file_open_internal(true, false, ...)
end

function Index:write(path, key, kind, ...)
	local file = self:file_openw(path, key, kind)
	
	if file then
		local r = file_write(file, ...)
		file_flush(file)
		file_close(file)
		return r
	end
end

function Index:scan_start()
	if not self.scan_file then
		self.scan_file = self:file_open(_NAME_BRANCH, _META_SCAN, subtype_array(_TYPE_PATHS))
	end

	return self.scan_file and file_lines(self.scan_file)
end

function Index:scan_lines(f)
	self.scan_iterator = self:scan_start()

	return function()
		if self.scan_iterator then
			local line = self.scan_iterator()

			if f and line then
				return f(line)
			else
				return line
			end
		end
	end
end

function Index:scan_columns(f)
	return self:scan_lines(function(line)
		local columns = string_split_plainer(line, ":")

		if f and columns then
			return f(columns)
		else
			return columns
		end
	end)
end

function Index:scan_paths(f)
	return self:scan_columns(function(columns)
		local path = columns[1]

		if f and path then
			return f(path)
		else
			return path
		end
	end)
end

function Index:scan_entries(f)
	return self:scan_paths(function(path)
		local file_path = path_join(self.output, path)
		local json_path = file_path..".".._EXT_META
		local decoded = json_path and file_decode(json_path)

		if f and decoded then
			return f(decoded, path)
		else
			return decoded, path
		end
	end)
end

function Index:all()
	return self:scan_entries()
end

-- todo: support deep trees
--       perhaps ast import/export for text/inlines/blocks

function Index:export(tree, path)
	for k, v in pairs(tree.meta) do
		local vt = pandoc.utils.type(v)

		if vt == "Inlines" then
			v = pandoc.utils.stringify(v)
			vt = "string"
		end

		if vt == "boolean" then
			self:write(path, k, _TYPE_BOOLEAN, v and _TYPE_TRUE or _TYPE_FALSE)
		elseif vt == "number" then
			self:write(path, k, _TYPE_NUMBER, tostring(v))
		elseif vt == "string" then
			self:write(path, k, _TYPE_STRING, v)
		end
	end
end

function Index:import(tree, lines)
	for path in lines do
		local name = path_file(path)
		local key, kind = Index.name_deconstruct(name)
		local content = kind and file_read(path)

		if kind == _TYPE_BOOLEAN then
			if content == _TYPE_TRUE then
				tree.meta[key] = true
			elseif content == _TYPE_FALSE then
				tree.meta[key] = false
			end
		elseif kind == _TYPE_NUMBER then
			tree.meta[key] = tonumber(content)
		elseif kind == _TYPE_STRING or kind == _TYPE_NAME or kind == _TYPE_PATH then
			tree.meta[key] = content
		end
	end

	return tree
end

function index_close()
	if CACHED_INDEX then
		CACHED_INDEX:close()
	end
end

function index_open(output)
	if CACHED_INDEX then
		index_close()
	end

	output = output or BUILD_CURRENT
	CACHED_INDEX = output and Index.open(output)

	return CACHED_INDEX
end

function index_write(...)
	return CACHED_INDEX and CACHED_INDEX:write(...)
end

function index_export(tree, path)
	return CACHED_INDEX and CACHED_INDEX:export(tree, path)
end

function index_import(tree, lines)
	return CACHED_INDEX and CACHED_INDEX:import(tree, lines)
end

function meta(q, options)
	local input = CACHED_INDEX and CACHED_INDEX:all()
	local output = nil

	if is_stringy(options) then
		options = { path = options }
	else
		options = options or { path = FILTER_PATH }
	end

	return query(q, input, output, options)
end

function extract_suffix()
	return is_stringy(EXTRACT_SUFFIX) and
	       translate(EXTRACT_SUFFIX) or ""
end

function extract_length()
	local suffix = extract_suffix()
	local maximum = EXTRACT_MAXIMUM - #suffix
	return maximum > 0 and maximum or nil
end

function extract_copy(tree, maximum)
	local finished = false
	local spaced = true
	local extract = {}
	local count = 0

	local append_nothing = function(el)
		return {}, false
	end

	local append_space = function()
		if not finished and not spaced then
			table.insert(extract, pandoc.Space())
			count = count + 1
			spaced = true
		end

		return nil, not finished
	end

	local append_word = function(text)
		if not finished and maximum and (count + #text) > maximum then
			finished = true
		end

		if not finished then
			table.insert(extract, pandoc.Str(text))
			count = count + #text
			spaced = false
		end

		return nil, not finished
	end

	local append_text = function(el)
		return append_word(el.text)
	end

	tree:walk({
		traverse = "topdown",

		Str = append_text,
		Code = append_text,
		Space = append_space,
		Block = append_space,
		LineBreak = append_space,
		SoftBreak = append_space,
		CodeBlock = append_nothing,
		Header = append_nothing,
		Figure = append_nothing,
		Image = append_nothing,
		Table = append_nothing,
		Div = append_nothing
	})

	if spaced then
		extract[#extract] = nil
	end

	if finished then
		table.insert(extract, pandoc.Str(extract_suffix()))
	end

	return #extract > 0 and pandoc.Inlines(extract) or nil
end

function extract_string(tree, maximum)
	if is_text(tree) then
		local copy = extract_copy(tree, maximum)
		return copy and pandoc.utils.stringify(copy) or ""
	elseif tree then
		local str = tostring(tree)

		if maximum and str and #str > maximum then
			str = str:sub(1, maximum)
			str = string_trim(str)..extract_suffix()
		end

		return str
	else
		return ""
	end
end

function extract_header(tree)
	local header = nil

	tree:walk({
		traverse = "topdown",

		Header = function(el)
			if not header then
				header = extract_copy(el.content)
			end

			return nil, header == nil
		end
	})

	return header
end

function extract_wordcount(tree)
	-- see: github.com/pandoc/lua-filters/blob/master/wordcount/wordcount.lua

	local count = 0

	local count_str = function(el)
		if #el.text > 0 and el.text:match("%P") then
			count = count + 1
		end
	end

	local count_code = function(el)
		local _, n = el.text:gsub("%S+", "")
		count = count + n
	end

	tree:walk({
		Str = count_str,
		Code = count_code,
		CodeBlock = count_code
	})

	return count
end

function extract_title()
	local prefix, suffix = "", ""
	local name = meta(_META_WORDMARK)
	local title = meta(_META_TITLE) or meta(_META_NAME)
	local direction = meta(_META_DIRECTION)

	if title and name and __TITLE_SEPARATOR then
		if direction == "rtl" then
			prefix = name..__TITLE_SEPARATOR
		else
			suffix = __TITLE_SEPARATOR..name
		end
	end

	return prefix..extract_string(title)..suffix
end

function extract_authors()
	local authors = meta(_META_AUTHORS)
	local names = {}

	if is_table(authors) then
		for i, path in ipairs(authors) do
			table.insert(names, meta(_META_TITLE, path))
		end
	end

	return #names > 0 and names or nil
end

function extract_icon()
	local icon = meta(_META_ICON)
	local icon_extension = icon and path_ext(icon)
	local icon_type = extension_mime(icon_extension)
	return icon, icon_type
end

function extract_defaults(tree)
	if tree.meta[_META_TITLE] == nil then
		local header = extract_header(tree.blocks)
		tree.meta[_META_TITLE] = header and pandoc.MetaInlines(header)
	end

	if tree.meta[_META_DESCRIPTION] == nil then
		local description = extract_copy(tree.blocks, extract_length())
		tree.meta[_META_DESCRIPTION] = description and pandoc.MetaInlines(description)
	end

	if tree.meta[_META_LENGTH] == nil then
		local length = extract_wordcount(tree.blocks)
		tree.meta[_META_LENGTH] = length
	end

	return tree
end

function extract_references(tree)
	return tree -- todo: add this
end

function filter_divs(tree)
	local function input_name(text)
		local trimmed = string_trim(text)
		local cleaned = string_replace(trimmed, "[^%w%s-_]+", "_")
		local dashed = string_replace(cleaned, "%s+", "-")
		return pandoc.text.lower(dashed)
	end

	local function inputify(span)
		local text = extract_string(span.content)
		local name = input_name(text)

		span.attributes["name"] = name
		span.attributes["placeholder"] = text
		span.attributes["type"] = span.classes[1]
		span.classes[1] = nil

		if array_contains(span.classes, _CLASS_REQUIRED) then
			span.attributes["required"] = true
		end

		return span
	end

	return tree:walk({
		Div = function(div)
			if array_contains(div.classes, _CLASS_FORM) then
				return div:walk({ Span = inputify })
			else
				return div
			end
		end
	})
end

function filter_spans(tree)
	return tree:walk({
		Span = function(element)
			if array_contains(element.classes, "mark") then
				return meta(pandoc.utils.stringify(element.content), {
					kind = _META_TYPE_DOCUMENT,
					convert = true
				})
			else
				return element
			end
		end
	})
end

function filter_links(tree)
	return tree:walk({
		Link = function(element)
			local target, current, external = link_normal(element.target, true, true)
			element.attributes[_ATTR_CURRENT] = current and "" or nil
			element.attributes.target = external and "_blank" or "_self"
			element.target = target
			return element
		end
	})
end

function filter_images(tree)
	return tree:walk({
		Image = function(element)
			element.src = link_normal(element.src, true, true)
			return element
		end
	})
end

function filter_classes(tree)
	local is_component = function(cls)
		return not not cls:match("^[^_-]")
	end

	local filter_element = function(element)
		local found_component = false
		local classes = {}

		for i, v in ipairs(element.classes) do
			local t = translate(v)
			table.insert(classes, v)

			if t ~= v then
				table.insert(classes, t)
			end

			if is_component(v) or is_component(t) then
				found_component = true
			end
		end

		if found_component then
			table.insert(classes, _CLASS_COMPONENT)
		end

		element.classes = classes
		return element
	end

	return tree:walk({
		Div = filter_element,
		Span = filter_element,
		Table = filter_element,
		TableHead = filter_element,
		TableFoot = filter_element,
		CodeBlock = filter_element,
		Figure = filter_element,
		Header = filter_element,
		Image = filter_element,
		Link = filter_element,
		Code = filter_element,
		Cell = filter_element
	})
end

function filter_headers(tree)
	return tree:walk({
		Header = function(element)
			table.insert(element.classes, _CLASS_HEADER)
			return element
		end
	})
end

function filter_words(tree)
	if WORDS then
		return tree:walk({
			Str = function(element)
				return convert_to_span(element.text, {class=_CLASS_WORD})
			end
		})
	else
		return tree
	end
end

function filter_page(tree)
	local blocks = {
		meta(__QUERY_ALL, {convert=true, nested=true}),
		pandoc.Div(tree.blocks, {class=_CLASS_PAGE})
	}

	return pandoc.Pandoc(blocks, tree.meta)
end

function template_defaults(tree)
	local icon, icon_type = extract_icon()

	if not tree.meta["template-link-js"] and DERIVE_SCRIPT then
		tree.meta["template-link-js"] = link_normal(_NAME_INDEX_JS)
	end

	if not tree.meta["template-link-css"] and DERIVE_STYLE then
		tree.meta["template-link-css"] = link_normal(_NAME_INDEX_CSS)
	end

	if not tree.meta["template-class-no-js"] and DERIVE_SCRIPT then
		tree.meta["template-class-no-js"] = _CLASS_NO_JS
	end

	if not tree.meta["template-class-component"] then
		tree.meta["template-class-component"] = _CLASS_COMPONENT
	end

	if not tree.meta["template-class-started"] then
		tree.meta["template-class-started"] = _CLASS_STARTED
	end

	if not tree.meta["template-icon"] then
		tree.meta["template-icon"] = icon
	end

	if not tree.meta["template-icon-type"] then
		tree.meta["template-icon-type"] = icon_type
	end

	if not tree.meta["template-encoding"] then
		tree.meta["template-encoding"] = meta(_META_ENCODING) or "UTF-8"
	end

	if not tree.meta["template-language"] then
		tree.meta["template-language"] = meta(_META_LANGUAGE)
	end

	if not tree.meta["template-direction"] then
		tree.meta["template-direction"] = meta(_META_DIRECTION)
	end

	if not tree.meta["template-title"] then
		tree.meta["template-title"] = extract_title()
	end

	if not tree.meta["template-description"] then
		tree.meta["template-description"] = meta(_META_DESCRIPTION)
	end

	if not tree.meta["template-authors"] then
		tree.meta["template-authors"] = extract_authors()
	end

	if not tree.meta["template-keywords"] then
		tree.meta["template-keywords"] = meta(_META_LABELS)
	end

	if not tree.meta["template-no-js"] then
		tree.meta["template-no-js"] = _CLASS_NO_JS
	end

	if not tree.meta["template-generator"] then
		tree.meta["template-generator"] = path_name(BIN_SELF)
	end

	return tree
end

function test_all()
	is_array__test()
	is_object__test()
	table_keys__test()
	table_values__test()
	array_contains__test()
	array_deduplicated__test()
	string_before__test()
	string_after__test()
	string_split__test()
	path_resolve__test()
	query__test()
	merge__test()
end
EOF
)"

FILTER_EMPTY="$(cat <<'EOF'
Pandoc = function(tree)
	return tree
end
EOF
)"

FILTER_TEST="$(cat <<'EOF'
Pandoc = function(tree)
	test_all()
end
EOF
)"

FILTER_EXTRACT="$(cat <<'EOF'
Pandoc = function(tree)
	index_open()
	tree = extract_defaults(tree)
	tree = extract_references(tree)
	index_export(tree, FILTER_PATH)
	index_close()
	os.exit(0)
end
EOF
)"

FILTER_META="$(cat <<'EOF'
Pandoc = function(tree)
	index_open()
	tree = index_import(tree, io.lines())
	index_close()
	return tree
end
EOF
)"

FILTER_DOCUMENT="$(cat <<'EOF'
Pandoc = function(tree)
	index_open()

	tree = filter_divs(tree)
	tree = filter_spans(tree)
	tree = filter_links(tree)
	tree = filter_images(tree)
	tree = filter_page(tree)
	tree = filter_words(tree)
	tree = filter_headers(tree)
	tree = filter_classes(tree)

	index_close()
	return tree
end
EOF
)"

GLOBAL_CSS="$(cat <<EOF
:root {
	/* inherit the strings and form class names */
}

[$ION__ATTR_QUERY]:empty::before,
[$ION__ATTR_QUERY]:empty [$ION__ATTR_VALUE]::before {
	content: attr($ION__ATTR_VALUE);
}

.form [type=submit]::before {
	content: var(--text-send, "Send");
}

.form[data-state="100"] [type="submit"]::before {
	content: var(--text-sending, "Sending…");
}

.form[data-state="200"] [type="submit"]::before {
	content: var(--text-sent, "Sent!");
}

.form[data-state="400"] [type="submit"]::before {
	content: var(--text-error-invalid, "Error: invalid request");
}

.form[data-state="411"] [type="submit"]::before {
	content: var(--text-error-malformed, "Error: malformed request");
}

.form[data-state="413"] [type="submit"]::before {
	content: var(--text-error-length, "Error: message too long");
}

.form[data-state="500"] [type="submit"]::before {
	content: var(--text-error-server, "Error: server error");
}
EOF
)"

GLOBAL_JS_ENV="$(cat <<EOF
const _ATTR_STATE = "$ION__ATTR_STATE";

const _CLASS_COMPONENT = "$ION__CLASS_COMPONENT";
const _CLASS_STARTED = "$ION__CLASS_STARTED";
const _CLASS_FORM = "$ION__CLASS_FORM";
const _CLASS_INPUT = "$ION__CLASS_INPUT";
const _CLASS_MESSAGE = "$ION__CLASS_MESSAGE";
const _CLASS_CHOICE = "$ION__CLASS_CHOICE";
EOF
)"

GLOBAL_JS="$(cat <<'EOF'
let COMPONENTS = {};

function document_ready(f) {
	// see: youmightnotneedjquery.com/#ready
	if (document.readyState !== "loading") {
		f();
	} else {
		document.addEventListener("DOMContentLoaded", f);
	}
}

function component_add(name, f) {
	if (!Array.isArray(COMPONENTS[name])) {
		COMPONENTS[name] = [];
	}

	COMPONENTS[name].push(f);
}

function components_run() {
	const components = document.querySelectorAll(`.${_CLASS_COMPONENT}`);

	for (let component of components) {
		let passed = true;

		component: for (const name of component.classList) {
			if (name.match(/^[_-]/)) {
				continue;
			}

			for (const f of COMPONENTS[name] || []) {
				const fr = f(component);

				if (fr === false) {
					passed = false;
					break component;
				} else if (fr) {
					component = fr;
				}
			}
		}

		if (passed) {
			component.classList.add(_CLASS_STARTED);
		}
	}
}

function node_create(tag) {
	return document.createElement(tag);
}

function node_create_text(text) {
	return document.createTextNode(text);
}

function node_move_children(previous, next) {
	while (previous.firstChild) {
		next.appendChild(previous.firstChild);
	}
}

function node_remove_children(node) {
	while (node.firstChild) {
		node.removeChild(node.lastChild);
	}
}

function node_copy_attributes(previous, next) {
	// see: stackoverflow.com/a/15086834/22451530
	for (let i = previous.attributes.length-1; i >= 0; i--) {
		const attribute = previous.attributes[i].cloneNode();
		next.attributes.setNamedItem(attribute);
	}
}

function node_replace(previous, next) {
	previous.parentNode.replaceChild(next, previous)
}

function node_change_tag(node, tag) {
	const changed = node_create(tag);
	node_move_children(node, changed);
	node_copy_attributes(node, changed);
	node_replace(node, changed);
	return changed;
}

function form_preview(form) {
	const content = form.cloneNode(true);
	const inputs = content.getElementsByTagName("input");
	const textareas = content.getElementsByTagName("textarea");
	const buttons = content.getElementsByTagName("button");
	const labels = content.getElementsByTagName("label");
	const all_inputs = [];

	for (let i = inputs.length-1; i >= 0; i--) {
		const input = inputs[i];

		const label = input.parentNode;
		const select = label.parentNode;
		const kind = input.getAttribute("type");
		const is_radio = kind === "radio";

		if (is_radio && input.checked) {
			label.removeChild(input);
		} else if (is_radio) {
			select.removeChild(label);
		} else {
			const text = node_create_text(input.value);
			const strong = node_change_tag(input, "strong");
			strong.appendChild(text);
			all_inputs.push(strong);
		}
	}

	for (let i = textareas.length-1; i >= 0; i--) {
		const text = textareas[i].value;
		const textarea = node_change_tag(textareas[i], "strong");
		textarea.innerHTML = text.replace(/\n/g, "<br>");
		all_inputs.push(textarea);
	}

	for (let i = all_inputs.length-1; i >= 0; i--) {
		const input = all_inputs[i];

		if (!content.isSameNode(input.parentNode)) {
			node_change_tag(input.parentNode, "p");
		}

		input.removeAttribute("placeholder");
		input.removeAttribute("type");
		input.removeAttribute("name");
	}

	for (let i = buttons.length-1; i >= 0; i--) {
		buttons[i].remove();
	}

	for (let i = labels.length-1; i >= 0; i--) {
		labels[i].outerHTML = labels[i].innerHTML;
	}

	return content;
}

function form_url() {
	const protocol = window.location.protocol.replace(/:$/, "");
	const hostname = window.location.hostname || "localhost";
	return protocol == "file" ? `http://${hostname}/` : "/";
}

function form_submit_xhr_request(body, callback) {
	const http = new XMLHttpRequest();
	http.open("POST", form_url(), true);
	http.setRequestHeader("Content-Type", "text/plain");
	http.onreadystatechange = function() { callback(http); };
	http.send(body);
}

function form_submit_xhr(form, preview) {
	const body = "html="+preview.innerHTML;

	// replace this with a new 'info' function
	console.log("sending:", body);

	form_submit_xhr_request(body, function(http) {
		if (http.readyState === 4) {
			form.setAttribute(_ATTR_STATE, http.status);
		}
	});
}

function form_submit_none(form, preview) {
	form.setAttribute(_ATTR_STATE, 0);
	// log error with a new function
}

function form_submit(form) {
	const preview = form_preview(form);

	form.setAttribute(_ATTR_STATE, 100);

	if ("XMLHttpRequest" in window) {
		form_submit_xhr(form, preview);
	} else {
		form_submit_none(form, preview);
	}
}

function form_handle(event) {
	form_submit(event.currentTarget);
	event.preventDefault();
}

function init_form_input_choice(form, root) {
	const root_name = root.getAttribute("name");

	for (let i = root.children.length-1; i >= 0; i--) {
		const content = root.children[i].cloneNode(true);
		const input = node_create("input");
		const label = node_create("label");

		input.setAttribute("type", "radio");
		input.setAttribute("name", root_name);
		if (i === 0) input.setAttribute("checked", true);

		label.appendChild(input);
		label.appendChild(content);

		root.replaceChild(label, root.children[i]);
	}

	root.removeAttribute("placeholder");
	return root;
}

function init_form_input_text(form, input, tag) {
	node_remove_children(input);

	input = node_change_tag(input, tag || "input");

	if (!form.isSameNode(input.parentNode)) {
		node_change_tag(input.parentNode, "label");
	}

	return input;
}

function init_form_input_message(form, input) {
	return init_form_input_text(form, input, "textarea");
}

function init_form_input(form, input) {
	const kind = input.getAttribute("type");

	if (kind === _CLASS_MESSAGE) {
		return init_form_input_message(form, input);
	} else if (kind === _CLASS_CHOICE) {
		return init_form_input_choice(form, input);
	} else {
		return init_form_input_text(form, input);
	}
}

function init_form_inputs(form) {
	const inputs = form.getElementsByTagName("span");

	for (let i = inputs.length-1; i >= 0; i--) {
		init_form_input(form, inputs[i]);
	}
}

function init_form_buttons(form) {
	const reset = node_create("button");
	const submit = node_create("button");

	reset.setAttribute("type", "reset");
	submit.setAttribute("type", "submit");

	form.appendChild(reset);
	form.appendChild(submit);
}

function init_form(form) {
	init_form_inputs(form);
	init_form_buttons(form);
	form = node_change_tag(form, "form");
	form.addEventListener("submit", form_handle);
	form.setAttribute(_ATTR_STATE, "");
	return form;
}

function main() {
	component_add(_CLASS_FORM, init_form);
	document_ready(components_run);
}
EOF
)"

TEMPLATE_HTML="$(cat <<'EOF'
<!DOCTYPE html>
<html class="$template-no-js$" xmlns="http://www.w3.org/1999/xhtml"$if(template-language)$ lang="$template-language$" xml:lang="$template-language$"$endif$$if(template-direction)$ dir="$template-direction$"$endif$>
<head>
	<meta charset="$template-encoding$" />
	<meta name="generator" content="$template-generator$" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes" />

	$if(template-date)$
		<meta name="date" content="$template-date$" />
	$endif$

	$for(template-authors)$
		<meta name="author" content="$template-authors$" />
	$endfor$

	$if(template-keywords)$
		<meta name="keywords" content="$for(template-keywords)$$template-keywords$$sep$, $endfor$" />
	$endif$

	$if(template-description)$
		<meta name="description" content="$template-description$" />
	$endif$

	$if(template-icon)$
		<link rel="icon"$if(template-icon-type)$ type="$template-icon-type$"$endif$ href="$template-icon$">
	$endif$

	$if(template-title)$
		<title>$template-title$</title>
	$endif$

	<script>
		if (typeof Symbol === "function") {
			document.documentElement.classList.remove("$template-class-no-js$");
		}
	</script>

	<style>
		:root:not(.$template-class-no-js$) .$template-class-component$:not(.$template-class-started$),
		:root:not(.$template-class-no-js$) .$template-class-component$:not(.$template-class-started$)::before,
		:root:not(.$template-class-no-js$) .$template-class-component$:not(.$template-class-started$)::after {
			pointer-events: none;
			user-select: none;
			opacity: 0;
		}
	</style>

	$if(template-link-js)$
		<script src="$template-link-js$" defer></script>
	$endif$

	$if(template-link-css)$
		<link rel="stylesheet" href="$template-link-css$">
	$endif$
</head>
<body>
$body$
</body>
</html>
EOF
)"

TEMPLATE_CADDY_DEVELOPMENT="$(cat <<'EOF'
PROTOCOL://DOMAIN_NAME:SERVE_PORT {
EOF
)"

TEMPLATE_CADDY_PRODUCTION="$(cat <<'EOF'
PROTOCOL://DOMAIN_NAME {
EOF
)"

TEMPLATE_CADDY_SHARED="$(cat <<'EOF'
	@post method POST
	reverse_proxy @post localhost:INBOX_PORT

	root * "ROOT_DIRECTORY"
	file_server
}
EOF
)"

TEMPLATE_CADDY_WWW="$(cat <<'EOF'
PROTOCOL://DOMAIN_NAME {
	redir PROTOCOL://www.{host}{uri}
}
EOF
)"

TEMPLATE_CADDY_UNWWW="$(cat <<'EOF'
PROTOCOL://www.DOMAIN_NAME {
	redir PROTOCOL://DOMAIN_NAME{uri}
}
EOF
)"

set -f #set -euf

is_bool() {
	! test "$1" || test "$1" = 1
}

is_uint() {
	# see: stackoverflow.com/a/61835747

	case $1 in
		'' | *[!0-9]*) return 1;;
		*) return 0 ;;
	esac
}

is_int() {
	case ${1#[-+]} in
		'' | *[!0-9]*) return 1;;
		*) return 0 ;;
	esac
}

is_unum() {
	case $1 in
		'' | . | *[!0-9.]* | *.*.*) return 1;;
		*) return 0 ;;
	esac
}

is_num() {
	case ${1#[-+]} in
		'' | . | *[!0-9.]* | *.*.*) return 1;;
		*) return 0 ;;
	esac
}

terminal_clear() {
	# see: stackoverflow.com/a/37778152/22451530
	# and: student.cs.uwaterloo.ca/~cs452/terminal.html
	test "$ION_WATCH_CLEAR" && test -t 1 && printf '\033[2J\033[H'
}

find_command() {
	command -v "$@" 2>/dev/null || true
}

found_command() {
	test "$(find_command "$@")"
}

found_os() {
	test "$(uname -s)" = "$1"
}

found_posix() {
	test -w /dev/null && test -w "$ION_TEMP" && found_command find
}

have_parent() {
	test "$ION_START_ID" != 0
}

have_flock() {
	test "$ION_BIN_FLOCK"
}

have_caddy() {
	test "$ION_BIN_CADDY"
}

have_fswatch() {
	test "$ION_BIN_FSWATCH"
}

have_esbuild() {
	test "$ION_BIN_ESBUILD"
}

have_ln() {
	test "$ION_BIN_LN"
}

have_luac() {
	test "$ION_BIN_LUAC"
}

have_openssl() {
	test "$ION_BIN_OPENSSL"
}

have_pandoc() {
	test "$ION_BIN_PANDOC"
}

have_rclone() {
	test "$ION_BIN_RCLONE"
}

have_sha256sum() {
	test "$ION_BIN_SHA256SUM"
}

have_sha256() {
	test "$ION_BIN_SHA256"
}

have_shasum() {
	test "$ION_BIN_SHASUM"
}

have_shellcheck() {
	test "$ION_BIN_SHELLCHECK"
}

have_ssh() {
	test "$ION_BIN_SSH"
}

have_tcpserver() {
	test "$ION_BIN_TCPSERVER"
}

have_tidy() {
	test "$ION_BIN_TIDY"
}

have_urandom() {
	test -r "$ION_DEV_URANDOM"
}

have_random() {
	have_urandom || have_openssl
}

have_hash() {
	have_sha256sum || have_sha256 || have_shasum || have_openssl
}

have_stat() {
	test "$ION_BIN_STAT"
}

have_stat_gnu() {
	test "$ION_BIN_STAT_GNU" = 1
}

have_stat_bsd() {
	test "$ION_BIN_STAT_BSD" = 1
}

have_stat_recognised() {
	have_stat && { have_stat_gnu || have_stat_bsd; }
}

have_find_gnu() {
	test "$ION_BIN_FIND_GNU" = 1
}

have_find() {
	test "$ION_BIN_FIND" && { have_find_gnu || have_stat_recognised; }
}

have_xargs() {
	test "$ION_BIN_XARGS"
}

have_xargs_gnu() {
	test "$ION_BIN_XARGS_GNU" = 1
}

have_parallel() {
	test "$ION_BIN_PARALLEL"
}

have_watcher() {
	have_fswatch
}

have_server_back() {
	have_tcpserver
}

have_server_front() {
	have_caddy
}

have_server() {
	have_server_front && have_server_back
}

building_script() {
	test "$ION_DERIVE_SCRIPT" = 1
}

building_script_global() {
	test "$ION_DERIVE_SCRIPT_GLOBAL" = 1
}

building_style() {
	test "$ION_DERIVE_STYLE" = 1
}

building_style_global() {
	test "$ION_DERIVE_STYLE_GLOBAL" = 1
}

building_meta() {
	have_pandoc && test "$ION_DERIVE_META" = 1
}

building_mesa() {
	fj__type="$1"

	test "$ION_DERIVE_MESA" = 1 && { {
		test "$ION_DERIVE_UNKNOWNS" = 1 && \
			test "$fj__type" = "$ION__META_TYPE_FILE"
	} || {
		test "$ION_DERIVE_KNOWNS" = 1 && \
			test "$fj__type" != "$ION__META_TYPE_FILE" && \
			test "$fj__type" != "$ION__META_TYPE_DIRECTORY"
	}; }
}

building_html() {
	have_pandoc && test "$ION_DERIVE_HTML" = 1
}

should_help() {
	! test "$ION_INPUT" && ! have_parent
}

should_test() {
	! have_parent && test "$ION_TEST" = 1
}

should_derive() {
	test "$ION_BUILD_CURRENT"
}

should_spin() {
	! should_help && ! have_parent && test "$ION_SPIN" = 1
}

should_watch() {
	! should_help && ! have_parent && ! should_spin && test "$ION_WATCH" = 1
}

should_serve() {
	! should_help && ! have_parent && {
		test "$ION_SERVE" = 1 || {
			test "$ION_SERVE" = 2 && have_server
		}
	}
}

should_handle() {
	test "${TCPREMOTEIP:-}"
}

can_build() {
	have_xargs || have_xargs_gnu || have_parallel
}

can_watch() {
	! test "$ION_WATCH" || test "$ION_WATCH" = 0 || {
		test "$ION_WATCH" = 1 && have_watcher
	}
}

can_serve() {
	test "$ION_SERVE" = 0 || test "$ION_SERVE" = 2 || {
		test "$ION_SERVE" = 1 && have_server
	}
}

print() {
	printf '%s\n' "$@"
}

printd() {
	printf '%d\n' "$@"
}

printe() {
	ab__label="$1"; shift
	ab__started=0
	ab__err=

	if have_parent; then
		ab__prefix="$ION___ERROR_PREFIX_SUB"

		if test "$ION_START_ID" != 0; then
			ab__prefix="$ab__prefix$ION___ERROR_PREFIX_SUBL$ION_START_ID$ION___ERROR_PREFIX_SUBR"
		fi
	else
		ab__prefix="$ION___ERROR_PREFIX_MAIN"
	fi

	for ab__part in "$@"; do
		if test "$ab__started" -eq 0; then
			ab__err="$ab__prefix$ab__label$ION___ERROR_INFIX_MAIN"
			ab__started=1
		else
			ab__err="$ab__err$ION___ERROR_INFIX_SUB"
		fi

		ab__err="$ab__err$ab__part"
	done

	if test "$ab__started" -eq 1; then
		>&2 printf '%s\n' "$ab__err"
	fi
}

error() {
	if test "$ION_VOLUME" -gt 0; then
		printe "$ION__WORD_ERROR" "$@"
	fi

	return 1
}

note() {
	if test "$ION_VOLUME" -gt 1; then
		printe "$ION__WORD_NOTE" "$@"
	fi
}

info() {
	if test "$ION_VOLUME" -gt 2; then
		printe "$ION__WORD_INFO" "$@"
	fi
}

floor() {
	di__minimum=${2:-1}
	di__floored=0

	if is_num "$1"; then
		di__floored="${1%%.*}"
	fi

	if test "${di__floored:-0}" -lt "$di__minimum"; then
		print "$di__minimum"
	else
		print "$di__floored"
	fi
}

timestamp() {
	# from: unix.stackexchange.com/a/703287

	print $(($(TZ=GMT0 date \
	+"((%Y-1600)*365+(%Y-1600)/4-(%Y-1600)/100+(%Y-1600)/400+1%j-1000-135140)\
	*86400+(1%H-100)*3600+(1%M-100)*60+(1%S-100)")))
}

string_trim_internal() {
	# see: dylanaraps/pure-sh-bible#trim-all-white-space-from-string-and-truncate-spaces
	# see: en.wikibooks.org/wiki/Regular_Expressions/POSIX_Basic_Regular_Expressions
	bq__trimmed="${2#"${2%%[![:"$1":]]*}"}"
	print "${bq__trimmed%"${bq__trimmed##*[![:"$1":]]}"}"
}

string_trim_graph() {
	string_trim_internal graph "$@"
}

string_trim_punct() {
	string_trim_internal punct "$@"
}

string_trim() {
	string_trim_internal space "$@"
}

string_split() {
	# see: dylanaraps/pure-sh-bible#split-a-string-on-a-delimiter

	ac__old_ifs="$IFS"
	IFS="$2"

	# shellcheck disable=SC2086
	set -- $1

	IFS="$ac__old_ifs"
	printf '%s\n' "$@"
}

string_quoted() {
	# from: gist.github.com/miguelmota/a0d37934c689f9ad000d01306905868c
	print "$1" | sed -e s/\"/'\\\"'/g
}

string_has_newline() {
	case "$1" in
		*"$NEWLINE"*) return 0 ;;
		*) return 1 ;;
	esac
}

string_escape() {
	# from: stackoverflow.com/a/2705678/22451530
	# and: stackoverflow.com/q/29613304
	print "$1" | sed -e 's/[\/&]/\\&/g'
}

string_replace() {
	if ! string_has_newline "$2"; then
		sed -e 's/'"$(string_escape "$1")"'/'"$(string_escape "$2")"'/g'
	else
		error "$ION__MSG_INVALID_REPLACEMENT" "$@" || return
	fi
}

string_replace_with() {
	# from: unix.stackexchange.com/a/49438/583801
	sed -e '/'"$1"'/ {' -e 'r '"$2" -e 'd' -e '}'
}

ext_data() {
	case "$1" in
		csv) return 0 ;;
		tsv) return 0 ;;
		json) return 0 ;;
		yaml) return 0 ;;
		yml) return 0 ;;
		xml) return 0 ;;
		xlsx) return 0 ;;
		*) return 1 ;;
	esac
}

ext_document() {
	case "$1" in
		adoc) return 0 ;;
		asciidoc) return 0 ;;
		docx) return 0 ;;
		fb2) return 0 ;;
		htm) return 0 ;;
		html) return 0 ;;
		ipynb) return 0 ;;
		latex) return 0 ;;
		markdown) return 0 ;;
		md) return 0 ;;
		odt) return 0 ;;
		org) return 0 ;;
		pptx) return 0 ;;
		rst) return 0 ;;
		rtf) return 0 ;;
		tex) return 0 ;;
		textile) return 0 ;;
		txt) return 0 ;;
		*) return 1 ;;
	esac
}

ext_code() {
	case "$1" in
		sh) return 0 ;;
		*) return 1 ;;
	esac
}

ext_style() {
	case "$1" in
		css) return 0 ;;
		*) return 1 ;;
	esac
}

ext_script() {
	case "$1" in
		js) return 0 ;;
		jsx) return 0 ;;
		ts) return 0 ;;
		tsx) return 0 ;;
		*) return 1 ;;
	esac
}

ext_markdown() {
	case "$1" in
		markdown) return 0 ;;
		md) return 0 ;;
		*) return 1 ;;
	esac
}

ext_bitmap() {
	case "$1" in
		png) return 0 ;;
		gif) return 0 ;;
		jpg) return 0 ;;
		jpeg) return 0 ;;
		tiff) return 0 ;;
		webp) return 0 ;;
		avif) return 0 ;;
		heif) return 0 ;;
		*) return 1 ;;
	esac
}

ext_vector() {
	case "$1" in
		svg) return 0 ;;
		*) return 1 ;;
	esac
}

ext_image() {
	ext_bitmap "$1" || ext_vector "$1"
}

ext_audio() {
	case "$1" in
		mp3) return 0 ;;
		ogg) return 0 ;;
		oga) return 0 ;;
		opus) return 0 ;;
		spx) return 0 ;;
		flac) return 0 ;;
		wav) return 0 ;;
		wave) return 0 ;;
		*) return 1 ;;
	esac
}

ext_video() {
	case "$1" in
		ogv) return 0 ;;
		webm) return 0 ;;
		mp4) return 0 ;;
		*) return 1 ;;
	esac
}

ext_map() {
	case "$1" in
		osm.pbf) return 0 ;;
		osm.bz2) return 0 ;;
		*) return 1 ;;
	esac
}

ext_object() {
	case "$1" in
		obj) return 0 ;;
		gltf) return 0 ;;
		glb) return 0 ;;
		*) return 1 ;;
	esac
}

ext_font() {
	case "$1" in
		ttf) return 0 ;;
		otf) return 0 ;;
		woff) return 0 ;;
		woff2) return 0 ;;
		*) return 1 ;;
	esac
}

string_is_safe() {
	case "$1" in
		*"$NEWLINE"*) return 1 ;;
		*"$CARRIAGE"*) return 1 ;;
		*) return 0 ;;
	esac
}

name_is_safe() {
	case "$1" in
		*/*) return 1 ;;
		*) return 0 ;;
	esac
}

path_is_safe() {
	case "$1" in
		"") return 1 ;;
		*"$TAB"*) return 1 ;;
		*"$NEWLINE"*) return 1 ;;
		*"$CARRIAGE"*) return 1 ;;
		*\\*) return 1 ;;
		*\**) return 1 ;;
		*\?*) return 1 ;;
		*\$*) return 1 ;;
		*\`*) return 1 ;;
		*\"*) return 1 ;;
		*\'*) return 1 ;;
		*\<*) return 1 ;;
		*\>*) return 1 ;;
		*\(*) return 1 ;;
		*\)*) return 1 ;;
		*\[*) return 1 ;;
		*\]*) return 1 ;;
		*\{*) return 1 ;;
		*\}*) return 1 ;;
		*\|*) return 1 ;;
		*\&*) return 1 ;;
		*\;*) return 1 ;;
		*:*) return 1 ;;
		*%*) return 1 ;;
		*~*) return 1 ;;
		*) return 0 ;;
	esac
}

path_is_exec() {
	test -x "$1"
}

path_is_file() {
	test -f "$1"
}

path_is_dir() {
	test -d "$1"
}

path_is_single() {
	test "${1##*/*}"
}

path_is_absolute() {
	case "$1" in
		/*) return 0 ;;
		 *) return 1 ;;
	esac
}

path_is_name() {
	test "$1" && case "$1" in
		*/*) return 1 ;;
		  *) return 0 ;;
	esac
}

path_trim_parent() {
	print "${1##*/}"
}

path_trim_name() {
	print "${1%/*}"
}

path_trim_start() {
	print "${1##"${1%%[!/]*}"}"
}

path_trim_end() {
	print "${1%%"${1##*[!/]}"}"
}

path_trim() {
	path_trim_end "$(path_trim_start "$1")"
}

path_parent() {
	# from: dylanaraps/pure-sh-bible#get-the-directory-name-of-a-file-path
	# dirname() { path_parent "$1" "." "/" }

	af__path="$1"
	af__relative="${2:-}"
	af__absolute="${3:-}"

	af__parent="${af__path:-"$af__relative"}"
	af__parent="$(path_trim_end "$af__parent")" || return

	if path_is_single "$af__parent"; then
		af__parent="$af__relative"
	fi

	af__parent="$(path_trim_name "$af__parent")" || return
	af__parent="$(path_trim_end "$af__parent")" || return

	print "${af__parent:-"$af__absolute"}"
}

path_file() {
	# from: dylanaraps/pure-sh-bible#get-the-base-name-of-a-file-path
	ag__name="$(path_trim_end "$1")" || return
	ag__name="$(path_trim_parent "$ag__name")" || return
	print "$ag__name"
}

path_name() {
	au__file="$(path_file "$1")" || return
	print "${au__file%%.*}"
}

path_ext_get() {
	av__file="$(path_file "$1")" || return

	case "$av__file" in
		*.*) print "${av__file#*.}" ;;
		  *) print "" ;;
	esac
}

path_ext_set() {
	aw__path="$1"
	aw__extension="$2"

	aw__base="$(path_parent "$aw__path")" || return
	aw__name="$(path_name "$aw__path")" || return

	if test "$aw__name"; then
		if test "$aw__base"; then
			aw__base="$aw__base/$aw__name"
		else
			aw__base="$aw__name"
		fi

		if test "$aw__extension" != "."; then
			aw__base="$aw__base.$aw__extension" || return
		fi
	fi

	if path_is_absolute "$aw__path" && ! path_is_absolute "$aw__base"; then
		aw__base="/$aw__base"
	fi

	print "$aw__base"
}

path_type() {
	eq__indicator="$1"
	eq__extension="$2"

	# ${indicator%"${indicator#?}"}
	eq__character="$(printf '%s' "$eq__indicator" | cut -c1-1)" || return

	if test "$eq__character" = "d"; then
		printf '%s' "$ION__META_TYPE_DIRECTORY"
	elif ext_data "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_DATA"
	elif ext_document "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_DOCUMENT"
	elif ext_code "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_CODE"
	elif ext_style "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_STYLE"
	elif ext_script "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_SCRIPT"
	elif ext_image "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_IMAGE"
	elif ext_audio "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_AUDIO"
	elif ext_video "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_VIDEO"
	elif ext_map "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_MAP"
	elif ext_object "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_OBJECT"
	elif ext_font "$eq__extension"; then
		printf '%s' "$ION__META_TYPE_FONT"
	else
		printf '%s' "$ION__META_TYPE_FILE"
	fi
}

path_absolute_from() {
	ct__cwd="$(pwd)" || return

	if test -d "$1"; then
		cd "$1" || return
		ct__path="$(pwd)" || return
		cd "$ct__cwd" || return
		print "$ct__path"
	fi
}

path_absolute() {
	# see: stackoverflow.com/a/23002317
	# and: stackoverflow.com/a/51264222

	ah__absolute=""

	if path_is_absolute "$1"; then
		ah__absolute="$1"
	elif path_is_dir "$1"; then
		ah__absolute="$(path_absolute_from "$1")" || return
	elif path_is_name "$1"; then
		ah__absolute="$(pwd)/$1" || return
	else
		ah__name="$(path_trim_parent "$1")" || return
		ah__parent="$(path_trim_name "$1")" || return
		ah__absparent="$(path_absolute_from "$ah__parent")" || return
		ah__absolute="$ah__absparent/$ah__name" || return
	fi

	print "$ah__absolute"
}

path_normal() {
	ai__absolute="$(path_absolute "$1")" || return
	ai__trimmed="$(path_trim_end "$ai__absolute")" || return
	print "${ai__trimmed:-"/"}"
}

path_join() {
	aj__joined=""

	for aj__part in "$@"; do
		if test "$aj__joined"; then
			aj__trimmed="$(path_trim "$aj__part")" || return
			aj__joined="$aj__joined/$aj__trimmed"
		else
			aj__trimmed="$(path_trim_end "$aj__part")" || return
			aj__joined="$aj__trimmed"
		fi
	done

	print "$aj__joined"
}

paths_split_raw() {
	string_split "$1" ":"
}

paths_split() {
	paths_split_raw "$@" | while IFS= read -r cw__path; do
		if test "$cw__path"; then
			cw__normal="$(path_normal "$cw__path")" || return

			if path_is_safe "$cw__normal"; then
				print "$cw__normal"
			fi
		fi
	done
}

paths_join() {
	if test "$1" && test "$2"; then
		printf '%s:%s' "$1" "$2"
	elif test "$1"; then
		printf '%s' "$1"
	else
		printf '%s' "$2"
	fi
}

paths_normal() {
	paths_split "$@" | {
		cy__paths=""

		while IFS= read -r cy__path; do
			if test "$cy__paths" && test "$cy__path"; then
				cy__paths="$cy__paths:$cy__path"
			else
				cy__paths="$cy__path"
			fi
		done

		print "$cy__paths"
	}
}

file_make() {
	touch "$1" || error "$ION__MSG_MAKING_FILE" "$1"
}

file_remove() {
	! test "$1" || rm -f "$1" || error "$ION__MSG_REMOVING_FILE" "$1"
}

file_move() {
	mv "$1" "$2" || error "$ION__MSG_MOVING_FILE" "$1" "$2"
}

file_copy() {
	co__result=1

	if have_ln; then
		"$ION_BIN_LN" -f "$@" 2>/dev/null || co__result=$?

		if test "$co__result" -ne 0; then
			note "$ION__MSG_LINKING_FILE" "$@"
			export ION_BIN_LN=
		fi
	fi

	if test "$co__result" -ne 0; then
		cp -f "$@" || return
	fi
}

dir_make() {
	mkdir "$1" || error "$ION__MSG_MAKING_DIR" "$1"
}

dir_make_all() {
	mkdir -p "$1" || error "$ION__MSG_MAKING_DIR" "$1"
}

dir_empty() {
	# see: unix.stackexchange.com/a/77313
	eo__path="$(path_normal "$1")" || return

	if test -d "$eo__path" && test "$eo__path" != "/"; then
		set +f
		rm -rf \
			"${eo__path:?}"/* \
			"${eo__path:?}"/.[!.]* \
			"${eo__path:?}"/..?* \
		|| true
		set -f
	fi
}

dir_remove() {
	df__path="$(path_normal "$1")" || return
	df__ret=0

	if test -d "$df__path" && test "$df__path" != "/"; then
		rm -rf "$df__path" 2>/dev/null || df__ret=$?
	fi

	return "$df__ret"
}

index_meta() {
	fl__path="$1"
	fl__root="${2:-"$ION_BUILD_CURRENT"}"
	fl__meta="$(path_join "$fl__root" "$ION__NAME_ROOT" "$fl__path")" || return

	if ! test -d "$fl__meta"; then
		mkdir -p "$fl__meta" || return
	fi

	printf '%s' "$fl__meta"
}

index_open() {
	fc__meta="$1"
	fc__key="$2"
	fc__type="$3"
	fc__value="$4"

	fc__name="$fc__key,$fc__type"
	fc__full="$(path_join "$fc__meta" "$fc__name")" || return

	# note: useless cats?

	if test "$fc__value"; then
		printf '%s' "$fc__value" > "$fc__full"
	else
		printf '%s' "$fc__full"
	fi
}

stop() {
	if test "$1"; then
		kill -TERM "$1" 2>/dev/null || true
		wait "$1" 2>/dev/null || true
	fi
}

start() {
	eh__ret=0
	eh__ifs="$IFS"
	eh__start_id="$ION_START_ID"
	IFS=" "

	export ION_START_ID=1

	# shellcheck disable=SC2086
	info "$ION__MSG_RUNNING_COMMAND" "$ION_START_PRE" $ION_START_ARGS ${ION_START_POST:+"$ION_START_POST"} "$@"

	# shellcheck disable=SC2086
	"$ION_START_PRE" $ION_START_ARGS ${ION_START_POST:+"$ION_START_POST"} "$@" || eh__ret=$?

	export ION_START_ID="$eh__start_id"
	IFS="$eh__ifs"

	return "$eh__ret"
}

start_many() {
	ev__start_id="$ION_START_ID"
	ev__old_volume="$ION_VOLUME"
	ev__volume="$ION_VOLUME"
	ev__ifs="$IFS"
	ev__args=
	ev__ret=0
	IFS=" "

	if test "$ev__volume" -gt 3; then
		ev__args="-t"
	fi

	if have_parallel; then
		ev__cmd="$ION_BIN_PARALLEL"
		ev__args="$ev__args --line-buffer"

		if test "$ev__volume" -gt 1 && test -t 2; then
			ev__args="$ev__args --progress"
		fi

		if test "$ION_PARALLEL"; then
			ev__args="$ev__args -j$ION_PARALLEL"
		fi
	elif have_xargs_gnu; then
		ev__cmd="$ION_BIN_XARGS"
		ev__args="$ev__args -d""$NEWLINE"

		if test "$ION_PARALLEL"; then
			ev__args="$ev__args -P$ION_PARALLEL"
			ev__volume=0
		fi
	elif have_xargs; then
		ev__cmd="$ION_BIN_XARGS"
		ev__args="$ev__args -L1"
	fi

	if test "$ev__cmd"; then
		export ION_START_ID=1
		export ION_VOLUME="$ev__volume"

		# shellcheck disable=SC2086
		info "$ION__MSG_RUNNING_COMMAND_MANY" "$ION_START_PRE" $ION_START_ARGS ${ION_START_POST:+"$ION_START_POST"} "$@"

		# shellcheck disable=SC2086
		"$ev__cmd" $ev__args "$ION_START_PRE" $ION_START_ARGS ${ION_START_POST:+"$ION_START_POST"} "$@" || ev__ret=$?

		export ION_START_ID="$ev__start_id"
		export ION_VOLUME="$ev__old_volume"
	fi

	IFS="$ev__ifs"
	return "$ev__ret"
}

start_stat() {
	if have_stat_gnu; then
		"$ION_BIN_STAT" -c "$1" "$3"
	elif have_stat_bsd; then
		"$ION_BIN_STAT" -f "$2" "$3"
	fi
}

start_stat_time() {
	start_stat '%Y' '%m' "$1"
}

start_stat_size() {
	start_stat '%s' '%z' "$1"
}

start_size_ls() {
	# from: stackoverflow.com/a/40167066
	dk__output="$(ls -dn "$1")" || return

	dk__ifs="$IFS"
	IFS=" "

	# shellcheck disable=SC2086
	set -- $dk__output && printd "$5"

	IFS="$dk__ifs"
}

start_size() {
	if have_stat_recognised; then
		start_stat_size "$1"
	else
		start_size_ls "$1"
	fi
}

start_find() {
	# see: stackoverflow.com/q/9612090/22451530
	# and: stackoverflow.com/q/21726862/22451530
	# and: unix.stackexchange.com/a/298595

	cn__mode="$1"
	cn__dir="${2:-"$ION_INPUT"}"

	cn__flat=
	cn__extra=
	cn__dirs=
	cn__ext=

	cn__args=
	cn__dirs_l=
	cn__dirs_r=
	cn__dir_l=
	cn__dir_r=
	cn__type_d=

	case "$cn__mode" in
		names)
			cn__flat=1
			cn__extra=
			cn__dirs=
			cn__ext=
		;;
		paths)
			cn__flat=
			cn__extra=
			cn__dirs=
			cn__ext=
		;;
		dirnames)
			cn__flat=1
			cn__extra=
			cn__dirs=1
			cn__ext=
		;;
		cluster)
			cn__flat="$ION_CLUSTER"
			cn__extra=1
			cn__dirs=1
			cn__ext=
		;;
		meta)
			cn__flat=
			cn__extra=
			cn__dirs=
			cn__ext="$ION__EXT_META"
		;;
	esac

	if test "$cn__flat"; then
		cn__dirs_l="$cn__dirs_l""!"
		cn__dirs_l="$cn__dirs_l""$NEWLINE""-name"
		cn__dirs_l="$cn__dirs_l""$NEWLINE""."
		cn__dirs_l="$cn__dirs_l""$NEWLINE""-prune"
		cn__dir_l="!"
	else
		cn__dirs_r="$cn__dirs_r""-prune"
		cn__dirs_r="$cn__dirs_r""$NEWLINE""-o"
		cn__dir_r="-o"
	fi

	if ! test "$cn__extra"; then
		cn__args="$cn__args""-print"
	elif have_find_gnu; then
		cn__args="$cn__args""-printf"
		cn__args="$cn__args""$NEWLINE""%p:%s:%Ts:%M\n"
	elif have_stat_gnu; then
		cn__args="$cn__args""-exec"
		cn__args="$cn__args""$NEWLINE""$ION_BIN_STAT"
		cn__args="$cn__args""$NEWLINE""-c"
		cn__args="$cn__args""$NEWLINE""%n:%s:%Y:%A"
		cn__args="$cn__args""$NEWLINE""{}"
		cn__args="$cn__args""$NEWLINE""+"
	elif have_stat_bsd; then
		cn__args="$cn__args""-exec"
		cn__args="$cn__args""$NEWLINE""$ION_BIN_STAT"
		cn__args="$cn__args""$NEWLINE""-f"
		cn__args="$cn__args""$NEWLINE""%N:%z:%m:%Sp"
		cn__args="$cn__args""$NEWLINE""{}"
		cn__args="$cn__args""$NEWLINE""+"
	else
		error "$ION__MSG_COMMAND_NOT_FOUND" "find" || return
	fi

	if test "$cn__dirs"; then
		cn__type_d="-o""$NEWLINE""-type""$NEWLINE""d"
	fi

	if test "$cn__ext"; then
		cn__ext="-name""$NEWLINE"'*.'"$cn__ext"
	fi

	(
		cd "$cn__dir" || exit

		IFS="$NEWLINE"

		# shellcheck disable=SC2086
		"$ION_BIN_FIND" . $cn__dirs_l \( \
			$cn__dir_l -name '.git' $cn__dir_r \
			$cn__dir_l -name '.hg' $cn__dir_r \
			$cn__dir_l -path './'"$ION__NAME_ROOT" \
		\) $cn__dirs_r \( \
			-type f $cn__type_d \
		\) \
			! -name '*'"$TAB"'*' \
			! -name '*'"$NEWLINE"'*' \
			! -name '*'"$CARRIAGE"'*' \
			! -name '*\\*' \
			! -name '*\**' \
			! -name '*\?*' \
			! -name '*$*' \
			! -name '*`*' \
			! -name '*"*' \
			! -name "*'*" \
			! -name '*<*' \
			! -name '*>*' \
			! -name '*(*' \
			! -name '*)*' \
			! -name '*\[*' \
			! -name '*]*' \
			! -name '*{*' \
			! -name '*}*' \
			! -name '*|*' \
			! -name '*&*' \
			! -name '*;*' \
			! -name '*:*' \
			! -name '*%*' \
			! -name '*~*' \
			! -name '.*' \
			$cn__ext \
			$cn__args
	)
}

start_random_urandom() {
	# from: unix.stackexchange.com/a/230676/583801
	LC_ALL=C tr -dc a-zA-Z0-9 <"$ION_DEV_URANDOM" 2>/dev/null | dd bs="$1" count=1 2>/dev/null || return
}

start_random_openssl() {
	start "$ION_BIN_OPENSSL" rand -base64 "$1" | tr "+/=" "xyz" | cut -c 1-"$1"
}

start_random() {
	am__amount="$1"

	if have_urandom; then
		start_random_urandom "$am__amount" || return
	elif have_openssl; then
		start_random_openssl "$am__amount" || return
	else
		return 1
	fi
}

start_hash_sha256_sha256sum() {
	an__output="$(start "$ION_BIN_SHA256SUM" < "$1")" || return

	an__ifs="$IFS"
	IFS=" "

	# shellcheck disable=SC2086
	set -- $an__output && print "$1"

	IFS="$an__ifs"
}

start_hash_sha256_sha256() {
	start "$ION_BIN_SHA256" -q "$1"
}

start_hash_sha256_shasum() {
	ao__output="$(start "$ION_BIN_SHASUM" -a 256 < "$1")" || return

	ao__ifs="$IFS"
	IFS=" "

	# shellcheck disable=SC2086
	set -- $ao__output && print "$1"

	IFS="$ao__ifs"
}

start_hash_sha256_openssl() {
	ap__output="$(start "$ION_BIN_OPENSSL" dgst -sha256 < "$1")" || return

	ap__ifs="$IFS"
	IFS=" "

	# shellcheck disable=SC2086
	set -- $ap__output && print "$2"

	IFS="$ap__ifs"
}

start_hash() {
	aq__digest=""

	if have_sha256sum; then
		aq__digest="$(start_hash_sha256_sha256sum "$1")" || return 1
	elif have_sha256; then
		aq__digest="$(start_hash_sha256_sha256 "$1")" || return 1
	elif have_shasum; then
		aq__digest="$(start_hash_sha256_shasum "$1")" || return 1
	elif have_openssl; then
		aq__digest="$(start_hash_sha256_openssl "$1")" || return 1
	fi

	if test "$aq__digest"; then
		print "sha256-$aq__digest"
		return 0
	else
		return 1
	fi
}

start_temp_template() {
	ar__prefix="$1"
	ar__extension="$2"
	ar__directory="$ION_TEMP"

	if ! test "$SALT"; then
		SALT="$(start_random 16)" || return
	fi

	if path_is_dir "$ar__directory"; then
		ar__directory="$(path_trim_end "$ar__directory")/" || return
	else
		ar__directory=""
	fi

	if test "$ar__prefix"; then
		ar__prefix="$(path_name "$ION_BIN_SELF")"-"$ar__prefix"
	fi

	if test "$ar__extension"; then
		ar__extension=".$ar__extension"
	fi

	printf \
		'%s%s-%s%s\n' \
		"$ar__directory" \
		"$SALT" \
		"$ar__prefix" \
		"$ar__extension"
}

start_temp_dir() {
	as__template="$(start_temp_template "$@")" || return
	dir_make "$as__template" || return
	print "$as__template"
}

start_temp_file() {
	at__template="$(start_temp_template "$@")" || return
	file_make "$at__template" || return
	print "$at__template"
}

start_temp_path() {
	da__template="$(start_temp_template "$@")" || return
	print "$da__template"
}

start_template() {
	:> "$TEMP_SED"
}

start_template_add() {
	print 's/'"$(string_escape "$1")"'/'"$(string_escape "$2")"'/g' >> "$TEMP_SED"
}

stop_template() {
	sed -f "$TEMP_SED"
}

start_lock() {
	# see: stackoverflow.com/a/24389468
	if have_flock; then
		exec 3>"$1" || return
		"$ION_BIN_FLOCK" -x 3
	fi
}

stop_lock() {
	if have_flock; then
		exec 3>&-
	fi
}

start_signal() {
	eg__ret=0
	start_lock "$TEMP_WATCH_LOCK" || return
	print "$1" >> "$TEMP_WATCH_STREAM" || eg__ret=$?
	stop_lock || return
	return $eg__ret
}

stop_signal() {
	ej__ret=0
	start_lock "$TEMP_WATCH_LOCK" || return
	sort -u < "$TEMP_WATCH_STREAM" | tr -d "$NEWLINE" || ej__ret=$?
	:> "$TEMP_WATCH_STREAM" || ej__ret=$?
	stop_lock || return
	return $ej__ret
}

start_fswatch() {
	ch__signal="$1"; shift
	ch__args="-ro"
	ch__ret=0

	ch__ifs="$IFS"
	IFS=" "

	if ! test "$ch__signal"; then
		ch__args="$ch__args""1"
	fi

	if test "$ION_WATCH_THROTTLE"; then
		ch__args="$ch__args"" -l $ION_WATCH_THROTTLE"
	fi

	if test "$ION_WATCH_POLLING"; then
		ch__args="$ch__args"" -m poll_monitor"
	fi

	#set -m

	if test "$ch__signal"; then
		# shellcheck disable=SC2086
		(start "$ION_BIN_FSWATCH" $ch__args "$@" | {
			while IFS= read -r _; do
				start_signal "$ch__signal"
			done
		}) &
		START_PID=$!
	else
		# shellcheck disable=SC2086
		start "$ION_BIN_FSWATCH" $ch__args "$@" >/dev/null &
		START_PID=$!
	fi

	#set +m

	IFS="$ch__ifs"
	return $ch__ret
}

start_watch() {
	start_fswatch "" "$@"
}

start_monitor() {
	cz__old_ifs="$IFS"
	IFS="$NEWLINE"

	# shellcheck disable=SC2046
	start_fswatch "$1" $(cat)

	IFS="$cz__old_ifs"
}

start_watcher() {
	note "$ION__MSG_STARTING_WATCHER"

	if test "$ION_INPUT" && ! test "$WATCHER_PID_INPUT"; then
		print "$ION_INPUT" | start_monitor "$ION___SIGNAL_INPUT"
		WATCHER_PID_INPUT="$START_PID"
	fi

	if test "$ION_SOURCE" && ! test "$WATCHER_PID_SOURCE"; then
		paths_split_raw "$ION_SOURCE" | start_monitor "$ION___SIGNAL_SOURCE"
		WATCHER_PID_SOURCE="$START_PID"
	fi
}

stop_watcher() {
	note "$ION__MSG_STOPPING_WATCHER"

	if test "$WATCHER_PID_INPUT"; then
		stop "$WATCHER_PID_INPUT" || true
		WATCHER_PID_INPUT=""
	fi

	if test "$WATCHER_PID_SOURCE"; then
		stop "$WATCHER_PID_SOURCE" || true
		WATCHER_PID_SOURCE=""
	fi
}

start_tcpserver() {
	if ! test "$SERVER_PID"; then
		set -m
		start "$ION_BIN_TCPSERVER" -q -U -H -R 127.0.0.1 "$ION_INBOX_PORT" sh "$ION_BIN_SELF" &
		SERVER_PID="$!"
		set +m
	fi
}

#start_tcpserver() {
#	if ! test "$SERVER_PID"; then
#		SERVER_PID=$(
#			export ION_START_PRE="$ION_BIN_TCPSERVER"
#			export ION_START_ARGS="-q -U -H -R 127.0.0.1 $ION_INBOX_PORT sh"
#			export ION_START_POST="$ION_BIN_SELF"
#
#			# shellcheck disable=SC2119
#			start_bg || return
#			print "$START_PID"
#		)
#	fi
#}

stop_tcpserver() {
	if test "$SERVER_PID"; then
		stop "$SERVER_PID" || return
		SERVER_PID=""
	fi
}

start_caddy_protocol() {
	if test "$ION_SERVE_PRODUCTION"; then
		print https
	else
		print http
	fi
}

start_caddy_port() {
	if test "$ION_SERVE_PORT"; then
		print "$ION_SERVE_PORT"
	elif ! test "$ION_SERVE_PRODUCTION"; then
		print 8080
	fi
}

start_caddy_config_raw() {
	if ! test "$ION_SERVE_PORT" && test "$ION_SERVE_PRODUCTION"; then
		print "$TEMPLATE_CADDY_PRODUCTION"
	else
		print "$TEMPLATE_CADDY_DEVELOPMENT"
	fi

	print "$TEMPLATE_CADDY_SHARED"

	if test "$ION_SERVE_PRODUCTION"; then
		if test "$ION_SERVE_WWW"; then
			print "$TEMPLATE_CADDY_WWW"
		else
			print "$TEMPLATE_CADDY_UNWWW"
		fi
	fi
}

start_caddy_config() {
	# todo: set the verbosity; config log.level

	start_template || return
	start_template_add ROOT_DIRECTORY "$1" || return
	start_template_add PROTOCOL "$(start_caddy_protocol)" || return
	start_template_add SERVE_PORT "$(start_caddy_port)" || return
	start_template_add DOMAIN_NAME "$ION_DOMAIN" || return
	start_template_add INBOX_PORT "$ION_INBOX_PORT" || return
	start_caddy_config_raw | stop_template || return
}

start_caddy() {
	start_caddy_config "$1" > "$TEMP_SERVER_CONFIG" || return

	start "$ION_BIN_CADDY" reload --adapter caddyfile --config "$TEMP_SERVER_CONFIG" || {
		if start "$ION_BIN_CADDY" start --adapter caddyfile --config "$TEMP_SERVER_CONFIG"; then
			SERVER_STARTED=1
		else
			return 1
		fi
	}
}

stop_caddy() {
	if test "$SERVER_STARTED"; then
		start "$ION_BIN_CADDY" stop 2>/dev/null || return
		SERVER_STARTED=
	else
		start "$ION_BIN_CADDY" reload --config - </dev/null >/dev/null 2>&1 || return
	fi
}

start_server() {
	note "$ION__MSG_STARTING_SERVERS"

	if ! have_server; then
		error "$ION__MSG_COMMAND_NOT_FOUND" "caddy and tcpserver" || return
		return 1
	fi

	if have_tcpserver; then
		start_tcpserver || return
	fi

	if have_caddy; then
		start_caddy "$1" || return
	fi
}

stop_server() {
	note "$ION__MSG_STOPPING_SERVERS"

	if ! should_serve; then
		return 0
	fi

	if have_caddy; then
		stop_caddy || true
	fi

	if have_tcpserver; then
		stop_tcpserver || true
	fi
}

start_pandoc_internal() {
	ci__template="$1"; shift

	if test "$ci__template"; then
		start "$ION_BIN_PANDOC" --template="$ci__template" "$@"
	else
		start "$ION_BIN_PANDOC" "$@"
	fi
}

start_pandoc() {
	ax__filter="$1"
	ax__full="${2:-"$TEMP_BLANK"}"
	ax__path="${3:-}"

	ax__ret=0
	ax__format="plain"
	ax__template=
	ax__target=
	ax__args=

	ax__ext="$(path_ext_get "$ax__full")" || return

	case "$ax__filter" in
		tests)
			ax__filter="$TEMP_FILTER_TEST"
			ax__target="$ION__EXT_HTML"
		;;
		extract)
			ax__filter="$TEMP_FILTER_EXTRACT"
		;;
		meta)
			ax__filter="$TEMP_FILTER_META"
			ax__template="$TEMP_TEMPLATE_JSON"
		;;
		filter)
			ax__filter="$TEMP_FILTER_DOCUMENT"
			ax__target="$ION__EXT_PANDOC"
			ax__format="json"
		;;
		template)
			ax__args="--standalone"
			ax__filter="$TEMP_FILTER_DOCUMENT"
			ax__template="$TEMP_TEMPLATE_HTML"
			ax__target="$ION__EXT_HTML"
			ax__format="html5"
		;;
		sandbox)
			ax__args="--sandbox"
			ax__filter="$TEMP_FILTER_EMPTY"
			ax__format="commonmark_x"
			ax__target="md"
		;;
	esac

	ax__args="$ax__args --quiet"
	ax__args="$ax__args --to=$ax__format"
	ax__args="$ax__args --number-sections"
	ax__args="$ax__args --shift-heading-level-by=1"
	ax__args="$ax__args --syntax-highlighting=$ION_SYNTAX"
	ax__args="$ax__args --email-obfuscation=references"
	ax__args="$ax__args --reference-location=document"
	ax__args="$ax__args --preserve-tabs"
	ax__args="$ax__args --section-divs"
	ax__args="$ax__args --wrap=none"
	ax__args="$ax__args --mathml"

	if ext_markdown "$ax__ext"; then
		ax__args="$ax__args --from=markdown"
		ax__args="$ax__args+mark"
		ax__args="$ax__args+autolink_bare_uris"
		ax__args="$ax__args+short_subsuperscripts"
		ax__args="$ax__args+emoji"
		ax__args="$ax__args-raw_html"
	fi

	if test "$ax__ext" = "$ION__EXT_PANDOC"; then
		ax__args="$ax__args --from=json"
	fi

	ax__old_path="$ION_FILTER_PATH"
	ax__old_target="$ION_FILTER_TARGET"
	ax__old_ifs="$IFS"
	IFS=" "

	export ION_FILTER_PATH="$ax__path"
	export ION_FILTER_TARGET="$ax__target"

	# shellcheck disable=SC2086
	start_pandoc_internal \
		"$ax__template" \
		--lua-filter="$ax__filter" \
		"$ax__full" \
		$ax__args \
	|| ax__ret=$?

	export ION_FILTER_PATH="$ax__old_path"
	export ION_FILTER_TARGET="$ax__old_target"

	IFS="$ax__old_ifs"
	return $ax__ret
}

start_tidy() {
	bh__body="$1"
	bh__path="$2"
	bh__result=0

	start "$ION_BIN_TIDY" \
		-quiet \
		-clean \
		--wrap 0 \
		--write-back yes \
		--add-xml-decl no \
		--output-xhtml yes \
		--show-body-only "$bh__body" \
		--add-meta-charset yes \
		--drop-empty-elements no \
		--drop-empty-paras no \
		--logical-emphasis yes \
		--indent-with-tabs yes \
		--indent auto \
		--merge-divs no \
		--merge-spans no \
		--join-styles yes \
		"$bh__path" || bh__result=$?

	if test "$bh__result" -gt 1; then
		return 1
	else
		return 0
	fi
}

start_esbuild() {
	if ! have_esbuild; then
		return 0
	fi

	de__in="$1"
	de__out="$2"
	de__ret=0
	de__args=
	de__ifs="$IFS"
	IFS=" "

	if test "$ION_MINIFY" -gt 0; then
		de__args="$de__args --sourcemap=linked --sources-content=true --minify-whitespace --minify-syntax --minify-identifiers --keep-names"
	fi

	# shellcheck disable=SC2086
	start "$ION_BIN_ESBUILD" \
		--outfile="$de__out/$ION__NAME_BRANCH.$de__in" \
		--loader="$de__in" \
		--bundle \
		--target=es6 \
		--platform=browser \
		--loader:'.svg'=dataurl \
		--external:'*.png' \
		--external:'*.ttf' \
		--external:'*.otf' \
		--external:'*.woff' \
		--external:'*.woff2' \
		--log-level=error \
		--log-limit=0 \
		--color=false \
		$de__args || de__ret=$?

	IFS="$de__ifs"
	return $de__ret
}

start_scan() {
	start_find cluster "$1" | while IFS= read -r ep__line; do
		ep__ifs="$IFS"
		IFS=":"
		# shellcheck disable=SC2086
		set -- $ep__line
		IFS="$ep__ifs"

		ep__path_raw="${1:-}"
		ep__path="/${ep__path_raw#./}"
		ep__size="${2:-}"
		ep__time="$(floor "${3:-}" 0)" || return
		ep__ext="$(path_ext_get "$ep__path")" || return
		ep__type="$(path_type "${4:-}" "$ep__ext")" || return

		if test "$ep__type" = "$ION__META_TYPE_DIRECTORY"; then
			ep__path="$(path_join "$ep__path" "$ION__NAME_BRANCH")" || return
		fi

		printf \
			'%s:%s:%d:%d\n' \
			"$ep__path" \
			"$ep__type" \
			"$ep__size" \
			"$ep__time"
	done
}

start_step_list() {
	fm__build="$1"

	start_find meta "$fm__build" | while IFS= read -r fm__meta_line; do
		fm__meta_path="${fm__meta_line#./}"
		printf '%s\n' "/${fm__meta_path%."$ION__EXT_META"}"
	done
}

start_step() {
	eu__step="$1"
	eu__build="$2"

	start_find dirnames "$eu__step" | while IFS= read -r eu__action_line; do
		eu__action_name="${eu__action_line#./}"
		eu__action_path="$eu__step/$eu__action_name"

		start_find paths "$eu__action_path" | while IFS= read -r eu__path_line; do
			eu__path="/${eu__path_line#./}"
			eu__content_path="$eu__action_path""$eu__path"
			read -r eu__content < "$eu__content_path" || true
			printf '%s:%s:%s\n' "$eu__action_name" "$eu__path" "$eu__content"
		done
	done

	eu__meta="$(index_meta "/$ION__NAME_BRANCH" "$eu__build")" || return
	eu__scan_type="$ION__TYPE_ARRAY$ION___TYPE_SEPARATOR$ION__TYPE_PATHS"
	eu__scan="$(index_open "$eu__meta" "$ION__META_SCAN" "$eu__scan_type")" || return
	start_step_list "$eu__build" > "$eu__scan"
}

start_run() {
	es__plan="$1"
	es__build="$2"
	es__count=1

	while :; do
		es__step="$es__plan/$es__count"

		if test -d "$es__step"; then
			export ION_BUILD_STEP="$es__count"
			start_step "$es__step" "$es__build" | start_many sh "$ION_BIN_SELF" || exit
		else
			break
		fi

		es__count=$((es__count+1))
	done
}

start_plan() {
	er__plan="$1"
	er__rebuild="$2"
	er__recompile="$3"
	er__ret=0

	er__step="$er__plan/1"
	er__index="$er__step/$ION__ACTION_INDEX"
	er__source="$er__step/$ION__ACTION_SOURCE"

	mkdir \
		"$er__step" \
		"$er__index" \
		"$er__source" \
	|| er__ret=$?

	if test "$er__ret" -ne 0; then
		return 1
	fi

	if test "$er__recompile"; then
		touch "$er__source/$ION__NAME_BRANCH"
	fi

	if test "$er__rebuild"; then
		start_scan | while IFS= read -r er__line; do
			er__ifs="$IFS"
			IFS=":"

			# shellcheck disable=SC2086
			set -- $er__line

			er__path="$1"; shift
			er__parent="$er__index""$(path_parent "$er__path")" || continue
			er__indexed="$er__index""$er__path"

			mkdir -p "$er__parent" || continue
			printf '%s\n' "$*" > "$er__indexed" || continue

			IFS="$er__ifs"
		done
	fi

	return "$er__ret"
}

start_prune() {
	ey__time="$1"

	start_find dirnames "$ION_BUILD" | while IFS= read -r ey__line; do
		ey__build="${ey__line#./}"
		ey__build_time="${ey__build%%-*}"

		if ! is_uint "$ey__build_time"; then
			continue
		fi

		if test "$ey__build_time" -lt "$ey__time"; then
			dir_remove "$ION_BUILD/$ey__build" || true
		fi
	done
}

start_build_internal() {
	ez__build="$1"
	ez__plan="$2"

	# defaulting to 1 is a hack - fix later and check callers
	# without this, subsequent 'i' builds wont have any source files
	ez__rebuild="${3:-1}"
	ez__recompile="${4:-1}"

	export ION_BUILD_PREVIOUS=
	export ION_BUILD_CURRENT="$ez__build"

	if test "$ez__recompile"; then
		start_esbuild css "$ez__build" < "$TEMP_SOURCE_STYLES" || return
		start_esbuild js "$ez__build" < "$TEMP_SOURCE_SCRIPTS" || return
	fi

	start_plan "$ez__plan" "$ez__rebuild" "$ez__recompile" || return
	start_run "$ez__plan" "$ez__build" || return

	dir_remove "$ez__plan" || return
}

start_build() {
	do__rebuild="$1"
	do__recompile="$2"

	note "$ION__MSG_BUILD_START"

	do__time="$(timestamp)" || return
	do__space="$(start_random 16)" || return

	do__build="$ION_BUILD/$do__time-$do__space"
	do__index="$do__build/$ION__NAME_ROOT"
	do__plan="$do__index/$ION__NAME_PLAN"
	do__log="$do__index/$ION__NAME_LOG"

	mkdir \
		"$do__build" \
		"$do__index" \
		"$do__plan" \
	|| return

	{ start_build_internal "$do__build" "$do__plan" "$do__rebuild" "$do__recompile" 2>&1 1>&4 | tee "$do__log" 1>&2; } 4>&1 || return

	if should_serve; then
		start_server "$do__build" || return
	fi

	start_prune "$do__time" || return

	do__after="$(timestamp)" || return
	do__duration=$((do__after-do__time)) || return
	note "$ION__MSG_STOPPING_BUILD" "$do__duration""$ION___SUFFIX_SECONDS"
}

start_bouncing() {
	if ! test "$ION_WATCH_DEBOUNCE"; then
		return
	fi

	info "$ION__MSG_NOTICED_CHANGE"

	dp__size=0

	while :; do
		dp__ret=0

		sleep "$ION_WATCH_DEBOUNCE" 2>/dev/null || dp__ret=$?

		if test "$dp__ret" -ne 0 && is_unum "$ION_WATCH_DEBOUNCE"; then
			note "$ION__MSG_NOT_SLEEPING"
			ION_WATCH_DEBOUNCE="$(floor "$ION_WATCH_DEBOUNCE")" || return
			sleep "$ION_WATCH_DEBOUNCE" || return
		fi

		dp__size_new="$(start_size "$TEMP_WATCH_STREAM")" || return

		if test "$dp__size_new" = "$dp__size"; then
			break
		else
			dp__size="$dp__size_new"
		fi
	done
}

start_receiving() {
	dn__size=0
	dn__pid=

	if test "$BUILD_COUNT" = 1 && test "$ION_BUILD_INITIAL"; then
		start_signal "$ION___SIGNAL_ALL" || return
	fi

	start_watch "$TEMP_WATCH_STREAM"
	dn__pid="$START_PID"

	if ! test "$dn__pid"; then
		return 1
	fi

	dn__size="$(start_size "$TEMP_WATCH_STREAM")" || return

	if test "$dn__size" -eq 0; then
		wait "$dn__pid" || return
		dn__size="$(start_size "$TEMP_WATCH_STREAM")" || return
	else
		stop "$dn__pid" || return
	fi

	dn__change="$(stop_signal)" || return

	if ! test "$dn__change"; then
		return
	fi

	case "$dn__change" in
		*"$ION___SIGNAL_ALL"*) dn__rebuild=1 ;;
		*"$ION___SIGNAL_INPUT"*) dn__rebuild=1 ;;
		*) dn__rebuild= ;;
	esac

	case "$dn__change" in
		*"$ION___SIGNAL_ALL"*) dn__recompile=1 ;;
		*"$ION___SIGNAL_SOURCE"*) dn__recompile=1 ;;
		*) dn__recompile= ;;
	esac

	if test "$BUILD_COUNT" -gt 1; then
		start_bouncing || return
	fi

	start_build "$dn__rebuild" "$dn__recompile"
}

start_spinning() {
	dj__now=$(timestamp) || return

	if ! test "$ION_SPIN_START"; then
		export ION_SPIN_START="$dj__now"
	fi

	if test "$BUILD_COUNT" -gt 1; then
		BUILD_COUNT=$((((dj__now-ION_SPIN_START)/ION_SPIN_INTERVAL)+1))

		dj__next=$((ION_SPIN_START+(BUILD_COUNT*ION_SPIN_INTERVAL)))
		dj__delta=$((dj__next-dj__now))

		note "$ION__MSG_SLEEPING" "$dj__delta""$ION___SUFFIX_SECONDS"
		sleep "$dj__delta" || return
	fi

	start_build
}

start_builder() {
	while :; do
		BUILD_COUNT=$((BUILD_COUNT+1))

		if test "$BUILD_COUNT" -gt 1; then
			terminal_clear || true
		fi

		if should_spin; then
			start_spinning || return
		elif should_watch; then
			start_receiving || return
		else
			start_build || return
			break
		fi
	done
}

derive_next() {
	fe__action="$1"; shift
	fe__path="$1"; shift
	
	fe__full="$(path_join "$ION_BUILD_CURRENT" "$ION__NAME_ROOT" "$ION__NAME_PLAN" $((ION_BUILD_STEP+1)) "$fe__action" "$fe__path")" || return

	fe__parent="$(path_parent "$fe__full")" || return
	mkdir -p "$fe__parent" || return

	fe__ifs="$IFS"
	IFS=":"
	printf '%s\n' "$*" > "$fe__full"
	IFS="$fe__ifs"
}

derive_next_children() {
	fk__input="$1"
	fk__path="$2"

	start_scan "$fk__input" | while IFS= read -r fk__line; do
		fk__ifs="$IFS"
		IFS=":"
		# shellcheck disable=SC2086
		set -- $fk__line
		IFS="$fk__ifs"

		fk__child=$(path_join "$fk__path" "${1#./}") || continue
		derive_next "$ION__ACTION_INDEX" "$fk__child" "$@" || continue
	done
}

derive_index() {
	fb__path="$1"
	fb__input="$2"
	fb__output="${3:-}"

	fb__type="${4:-"$ION__META_TYPE_FILE"}"
	fb__size="${5:-"$(start_size "$fb__input")"}" || return
	fb__time="${6:-"$(start_stat_time "$fb__input")"}" || return
	fb__parent="${7:-}"

	fb__meta="$(index_meta "$fb__path")" || return

	index_open "$fb__meta" "$ION__META_SIZE" "$ION__TYPE_NUMBER" "$fb__size" || return
	index_open "$fb__meta" "$ION__META_MODIFIED" "$ION__TYPE_NUMBER" "$fb__time" || return
	index_open "$fb__meta" "$ION__META_TYPE" "$ION__TYPE_NAME" "$fb__type" || return

	if test "$fb__parent"; then
		index_open "$fb__meta" "$ION__META_PARENT" "$ION__TYPE_PATH" "$fb__parent" || return
	fi

		# ready to build html?
		# scan_entries, 
		#	jsons?
		#	scan file?

	if test "$fb__type" = "$ION__META_TYPE_DOCUMENT"; then
		start_pandoc extract "$fb__input" "$fb__path" || return
	fi

	if building_meta; then
		derive_next "$ION__ACTION_META" "$fb__path" "$fb__type" || return
	fi

	if building_mesa "$fb__type" && test "$fb__output"; then
		derive_next "$ION__ACTION_MESA" "$fb__path" || return
	fi

	if test "$fb__type" = "$ION__META_TYPE_DIRECTORY"; then
		if test "$ION_CLUSTER" = 1; then
			fb__indir="$(path_parent "$fb__input")" || return
			fb__pathdir="$(path_parent "$fb__path")" || return
			derive_next_children "$fb__indir" "$fb__pathdir" || return
		fi

		if test "$fb__output"; then
			fb__outdir="$(path_parent "$fb__output")" || return
	
			if ! test -d "$fb__outdir"; then
				mkdir -p "$fb__outdir" || return
			fi
		fi
	fi
}

derive_source() {
	fd__output="$3"

	fd__path_js=$(path_ext_set "$fd__output" "$ION__EXT_JS") || return
	fd__path_js_map=$(path_ext_set "$fd__output" "$ION__EXT_JS.$ION__EXT_MAP") || return
	fd__path_css_map=$(path_ext_set "$fd__output" "$ION__EXT_CSS.$ION__EXT_MAP") || return
	fd__path_css=$(path_ext_set "$fd__output" "$ION__EXT_CSS") || return

	fd__name_js=$(path_file "$fd__path_js") || return
	fd__name_js_map=$(path_file "$fd__path_js_map") || return
	fd__name_css_map=$(path_file "$fd__path_css_map") || return
	fd__name_css=$(path_file "$fd__path_css") || return

	if test -f "$fd__path_js"; then
		derive_index "$fd__name_js" "$fd__path_js" "" "$ION__META_TYPE_SCRIPT" || return
	fi

	if test -f "$fd__path_css"; then
		derive_index "$fd__name_css" "$fd__path_css" "" "$ION__META_TYPE_STYLE" || return
	fi

	if test -f "$fd__path_js_map"; then
		derive_index "$fd__name_js_map" "$fd__path_js_map" "" "" "" "" "$fd__path_js" || return
	fi

	if test -f "$fd__path_css_map"; then
		derive_index "$fd__name_css_map" "$fd__path_css_map" "" "" "" "" "$fd__path_css" || return
	fi
}

derive_mesa() {
	fh__input="$2"
	fh__output="$3"
	cp -f "$fh__input" "$fh__output" || return
}

derive_meta_paths() {
	fg__path="$1"
	
	fg__full="$(path_join "$ION_BUILD_CURRENT" "$ION__NAME_ROOT" "$fg__path")" || return

	start_find names "$fg__full" | while IFS= read -r fg__name; do
		path_join "$fg__full" "${fg__name#./}"
	done
}

derive_meta() {
	ff__path="$1"
	#ff__input="$2"
	ff__output="$3"
	ff__type="$4"

	derive_meta_paths "$ff__path" | start_pandoc meta "" "$ff__path" > "$ff__output.$ION__EXT_META"

	if building_html && test "$ff__type" = "$ION__META_TYPE_DOCUMENT"; then
		derive_next "$ION__ACTION_HTML" "$ff__path" || return
	fi
}

derive_html() {
	fi__path="$1"
	fi__input="$2"
	fi__output="$3"

	fi__html="$(path_ext_set "$fi__output" "$ION__EXT_HTML")" || return
	start_pandoc template "$fi__input" "$fi__path" > "$fi__html" || return
}

derive() {
	for fa__line in "$@"; do
		fa__ifs="$IFS"
		IFS=":"
		# shellcheck disable=SC2086
		set -- $fa__line
		IFS="$fa__ifs"

		info "$ION__MSG_BUILD_ACTION" "$ION_BUILD_STEP" "$@"

		fa__action="$1"; shift
		fa__path="$1"; shift

		fa__input="$ION_INPUT""$fa__path"
		fa__output="$ION_BUILD_CURRENT""$fa__path"

		case "$fa__action" in
			"$ION__ACTION_INDEX") fa__derive=derive_index ;;
			"$ION__ACTION_SOURCE") fa__derive=derive_source ;;
			"$ION__ACTION_META") fa__derive=derive_meta ;;
			"$ION__ACTION_MESA") fa__derive=derive_mesa ;;
			"$ION__ACTION_HTML") fa__derive=derive_html ;;
			*) continue ;;
		esac

		"$fa__derive" "$fa__path" "$fa__input" "$fa__output" "$@" || continue
	done
}

	# this http parser is for temporary demos
	# it is intended to be replaced soon

	is_char() {
		case "$1" in
			[[:alnum:]]) return 0 ;;
			*) return 1 ;;
		esac
	}

	http_request() {
		# only performs one read syscall
		# whole message might not be in buffer
		# would need to loop until content length is reached past the headers
		# or until eof is reached in the headers or body (loop until \r\n\r\n then read until Content-Length or eof)
		dd count=1 bs="8192" 2>/dev/null
	}

	http_request_byte() {
		# see section 3 of: www.etalabs.net/sh_tricks.html
		dd count=1 bs=1 2>/dev/null
	}

	http_request_body() {
		cat
	}

	http_status_left() {
		print "${1%%[![:graph:]]*}"
	}

	http_status_middle() {
		string_trim "$(string_trim_graph "$1")"
	}

	http_status_right() {
		print "${1##*[![:graph:]]}"
	}

	http_header_left() {
		string_trim "${1%%:*}"
	}

	http_header_right() {
		string_trim "${1#*:}"
	}

	http_respond() {
		# should include: Content-Type: text/plain; charset=utf-8
		printf '%s %s\r\n%s\r\n\r\n' "HTTP/1.1" "$1" "Content-Length: 0"
	}

	http_respond_ok() {
		http_respond "200 OK"
	}

	http_respond_bad_request() {
		http_respond "400 Bad Request"
	}

	http_respond_length_required() {
		http_respond "411 Length Required"
	}

	http_respond_too_large() {
		http_respond "413 Payload Too Large"
	}

	http_respond_internal_error() {
		http_respond "500 Internal Server Error"
	}

	http_post_path() {
		ca__extension="$1"
		ca__inbox="$2"

		ca__noise="$(start_random 8)" || return
		ca__date="$(date +"%Y-%m-%d %H-%M-%S")" || return
		ca__name="$ca__date $ca__noise"

		if test "$ca__extension"; then
			ca__name="$ca__name.$ca__extension"
		fi

		print "$ca__inbox"/"$ca__name"
	}

	http_post() {
		bz__content="$1"
		bz__temp="$(start_temp_file post md)" || return
		bz__output="$(http_post_path md "$ION_INBOX")" || return
		start_pandoc sandbox "$bz__content" > "$bz__temp" || return
		mv "$bz__temp" "$bz__output" || return
	}

	http_response() {
		br__method=
		br__version=
		br__resource=
		br__extension=
		br__length=

		br__line_pos=0
		br__head_pos=0
		br__body_pos=0

		br__valid=1
		br__valid_size=1
		br__valid_length=1

		# this is weak as it is unlimited
		while IFS= read -r br__line; do
			br__line="$(string_trim "$br__line")" || return
			br__head_pos=$((br__head_pos+${#br__line}+2))
			br__line_pos=$((br__line_pos+1))

			if test -z "$br__line"; then
				break
			elif test "$br__line_pos" -eq 1; then
				br__method="$(http_status_left "$br__line")" || return
				# shellcheck disable=SC2034
				br__resource="$(http_status_middle "$br__line")" || return
				# shellcheck disable=SC2034
				br__version="$(http_status_right "$br__line")" || return
			else
				br__key="$(http_header_left "$br__line")" || return
				br__value="$(http_header_right "$br__line")" || return

				# should be case insensitive
				if test "$br__key" = "Content-Length"; then
					br__length="$br__value"
				fi
			fi
		done

		if ! is_uint "$br__length"; then
			br__valid_length=0
			br__valid=0
		fi

		if test $((br__head_pos+br__length)) -gt 8192; then
			br__valid_size=0
			br__valid=0
		fi

		if test "$br__method" = "POST" && test "$br__valid" -eq 1; then
			while test $((br__body_pos+1)) -le "$br__length"; do
				br__byte="$(http_request_byte)" || return
				br__body_pos=$((br__body_pos+${#br__byte}))

				if ! is_char "$br__byte"; then
					if test "$br__byte" != "="; then
						br__valid=0
					fi

					break
				fi

				br__extension="$br__extension$br__byte"

				if test ${#br__extension} -gt 32; then # env var
					br__valid=0
					break
				fi
			done

			if test -z "$br__extension"; then
				br__valid=0
			fi
		fi

		if test "$br__valid" -eq 0; then
			if test "$br__valid_length" -eq 0; then
				http_respond_length_required || return
			elif test "$br__valid_size" -eq 0; then
				http_respond_too_large || return
			else
				http_respond_bad_request || return
			fi
		else
			# will silently drop post if there's no inbox
			if test "$br__method" = "POST" && test "$ION_INBOX"; then
				br__temp="$(start_temp_file request "$br__extension")" || return
				http_request_body > "$br__temp"
				info "post received" "$br__temp" "$(cat "$br__temp")"
				http_post "$br__temp"
				rm -f "$br__temp"
			fi

			http_respond_ok || return
		fi
	}

	http_handle() {
		{ http_request | http_response; } || {
			http_respond_internal_error
			return 1
		}
	}

stop_temp_shared() {
	file_remove "$TEMP_SED" || true
	file_remove "$TEMP_BLANK" || true
	file_remove "$TEMP_FILTER_EMPTY" || true
	file_remove "$TEMP_FILTER_TEST" || true
	file_remove "$TEMP_FILTER_EXTRACT" || true
	file_remove "$TEMP_FILTER_META" || true
	file_remove "$TEMP_FILTER_DOCUMENT" || true
	file_remove "$TEMP_TEMPLATE_JSON" || true
	file_remove "$TEMP_TEMPLATE_HTML" || true
}

stop_temp_parent() {
	file_remove "$TEMP_WATCH_LOCK" || true
	file_remove "$TEMP_WATCH_STREAM" || true
	file_remove "$TEMP_SERVER_CONFIG" || true
	file_remove "$TEMP_SOURCE_STYLES" || true
	file_remove "$TEMP_SOURCE_SCRIPTS" || true

	if test "$BUILD_TEMP"; then
		dir_remove "$ION_BUILD" || true
		BUILD_TEMP=
	fi
}

deinit() {
	if test "$STARTED"; then
		if have_parent; then
			stop_temp_shared || true
		else
			stop_server || true
			stop_watcher || true
			stop_temp_parent || true
		fi

		STARTED=
	fi
}

init_signals() {
	trap deinit EXIT HUP INT QUIT ABRT TERM
	trap "" PIPE
}

init_basics() {
	TAB="	"
	CARRIAGE="$(printf '\r_')" || return
	CARRIAGE="${CARRIAGE%_}"
	NEWLINE="
"
}

init_env_bin() {
	cs__command="$1"
	cs__self="$2"

	cs__absolute=

	if path_is_absolute "$cs__command"; then
		cs__absolute="$cs__command"
	elif path_is_name "$cs__command" && ! test -f "$cs__command"; then
		cs__absolute="$(find_command "$cs__command")" || return
	elif test "$cs__command"; then
		cs__absolute="$(path_normal "$cs__command")" || return
	fi

	if path_is_name "$cs__absolute"; then
		cs__self=1
	fi

	if path_is_absolute "$cs__absolute" && ! test "$cs__self" && ! path_is_exec "$cs__absolute"; then
		error "$ION__MSG_COMMAND_NOT_EXEC" "$cs__command" "$cs__absolute" || return
	fi

	if ! test "$cs__absolute" || path_is_safe "$cs__absolute"; then
		print "$cs__absolute"
	else
		error "$ION__MSG_COMMAND_NOT_RECOGNISED" "$cs__absolute" || return
	fi
}

init_env_bins() {
	dc__commands="$1"; shift

	paths_split_raw "$dc__commands" | {
		dc__found=

		while IFS= read -r dc__command; do
			dc__found="$(init_env_bin "$dc__command" "$@")" || continue

			if test "$dc__found"; then
				break
			fi
		done

		print "$dc__found"
	}
}

init_env_find() {
	ea__bin_self="$(init_env_bins "$ION_BIN_SELF" 1)" || return
	ea__bin_flock="$(init_env_bins "$ION_BIN_FLOCK")" || return
	ea__bin_caddy="$(init_env_bins "$ION_BIN_CADDY")" || return
	ea__bin_find="$(init_env_bins "$ION_BIN_FIND")" || return
	ea__bin_fswatch="$(init_env_bins "$ION_BIN_FSWATCH")" || return
	ea__bin_esbuild="$(init_env_bins "$ION_BIN_ESBUILD")" || return
	ea__bin_ln="$(init_env_bins "$ION_BIN_LN")" || return
	ea__bin_luac="$(init_env_bins "$ION_BIN_LUAC")" || return
	ea__bin_openssl="$(init_env_bins "$ION_BIN_OPENSSL")" || return
	ea__bin_pandoc="$(init_env_bins "$ION_BIN_PANDOC")" || return
	ea__bin_rclone="$(init_env_bins "$ION_BIN_RCLONE")" || return
	ea__bin_sha256sum="$(init_env_bins "$ION_BIN_SHA256SUM")" || return
	ea__bin_sha256="$(init_env_bins "$ION_BIN_SHA256")" || return
	ea__bin_shasum="$(init_env_bins "$ION_BIN_SHASUM")" || return
	ea__bin_shellcheck="$(init_env_bins "$ION_BIN_SHELLCHECK")" || return
	ea__bin_ssh="$(init_env_bins "$ION_BIN_SSH")" || return
	ea__bin_stat="$(init_env_bins "$ION_BIN_STAT")" || return
	ea__bin_tcpserver="$(init_env_bins "$ION_BIN_TCPSERVER")" || return
	ea__bin_tidy="$(init_env_bins "$ION_BIN_TIDY")" || return
	ea__bin_xargs="$(init_env_bins "$ION_BIN_XARGS")" || return
	ea__bin_parallel="$(init_env_bins "$ION_BIN_PARALLEL")" || return

	export ION_BIN_SELF="$ea__bin_self"
	export ION_BIN_FLOCK="$ea__bin_flock"
	export ION_BIN_CADDY="$ea__bin_caddy"
	export ION_BIN_FIND="$ea__bin_find"
	export ION_BIN_FSWATCH="$ea__bin_fswatch"
	export ION_BIN_ESBUILD="$ea__bin_esbuild"
	export ION_BIN_LN="$ea__bin_ln"
	export ION_BIN_LUAC="$ea__bin_luac"
	export ION_BIN_OPENSSL="$ea__bin_openssl"
	export ION_BIN_PANDOC="$ea__bin_pandoc"
	export ION_BIN_RCLONE="$ea__bin_rclone"
	export ION_BIN_SHA256SUM="$ea__bin_sha256sum"
	export ION_BIN_SHA256="$ea__bin_sha256"
	export ION_BIN_SHASUM="$ea__bin_shasum"
	export ION_BIN_SHELLCHECK="$ea__bin_shellcheck"
	export ION_BIN_SSH="$ea__bin_ssh"
	export ION_BIN_STAT="$ea__bin_stat"
	export ION_BIN_TCPSERVER="$ea__bin_tcpserver"
	export ION_BIN_TIDY="$ea__bin_tidy"
	export ION_BIN_XARGS="$ea__bin_xargs"
	export ION_BIN_PARALLEL="$ea__bin_parallel"
}

init_env_input() {
	if test "$ION_INPUT"; then
		dt__normal="$(path_normal "$ION_INPUT")" || return
		export ION_INPUT="$dt__normal"
	fi
}

init_env_styles() {
	paths_split_raw "$1" | {
		eb__styles=

		while IFS= read -r eb__path; do
			if path_is_dir "$eb__path"; then
				eb__path="$(path_join "$eb__path" "$ION__NAME_MAIN_CSS")" || continue
			fi

			eb__ext="$(path_ext_get "$eb__path")" || continue

			if path_is_file "$eb__path" && ext_style "$eb__ext"; then
				eb__styles="$(paths_join "$eb__styles" "$eb__path")"
			fi
		done

		print "$eb__styles"
	}
}

init_env_scripts() {
	paths_split_raw "$1" | {
		ec__scripts=

		while IFS= read -r ec__path; do
			if path_is_dir "$ec__path"; then
				ec__path="$(path_join "$ec__path" "$ION__NAME_MAIN_JS")" || continue
			fi

			ec__ext="$(path_ext_get "$ec__path")" || continue

			if path_is_file "$ec__path" && ext_script "$ec__ext"; then
				ec__scripts="$(paths_join "$ec__scripts" "$ec__path")"
			fi
		done

		print "$ec__scripts"
	}
}

init_env_source() {
	if test "$ION_SOURCE"; then
		dg__source="$(paths_normal "$ION_SOURCE")" || return
		export ION_SOURCE="$dg__source"

		if ! test "$ION_SOURCE_STYLES"; then
			dg__styles="$(init_env_styles "$dg__source")" || return
			export ION_SOURCE_STYLES="$dg__styles"
		fi

		if ! test "$ION_SOURCE_SCRIPTS"; then
			dg__scripts="$(init_env_scripts "$dg__source")" || return
			export ION_SOURCE_SCRIPTS="$dg__scripts"
		fi
	fi
}

init_env_build() {
	if test "$ION_BUILD"; then
		du__normal="$(path_normal "$ION_BUILD")" || return
		export ION_BUILD="$du__normal"
	fi
}

init_env_mirrors() {
	if test "$ION_MIRRORS"; then
		dy__normal="$(paths_normal "$ION_MIRRORS")" || return
		export ION_MIRRORS="$dy__normal"
	fi
}

init_env_inbox() {
	if test "$ION_INBOX"; then
		dz__normal="$(paths_normal "$ION_INBOX")" || return
		export ION_INBOX="$dz__normal"
	fi
}

init_env() {
	init_env_find || return
	init_env_source || return
	init_env_input || return
	init_env_build || return
	init_env_mirrors || return
	init_env_inbox || return
}

init_check_posix() {
	if ! found_posix; then
		error "$ION__MSG_NOT_POSIX" || return
	fi
}

init_check_bool() {
	if ! is_bool "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_uint() {
	if ! is_uint "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_int() {
	if ! is_int "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_unum() {
	if ! is_unum "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_num() {
	if ! is_num "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_string() {
	if ! test "$2" || ! string_is_safe "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_name() {
	if ! test "$2" || ! path_is_safe "$2" || ! name_is_safe "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_dir() {
	if ! path_is_dir "$2" || ! path_is_safe "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_path() {
	if ! test "$2" || ! path_is_safe "$2"; then
		error "$ION__MSG_INVALID_ENVIRONMENT" "$1" "$2" || return
	fi
}

init_check_paths() {
	true
}

init_check_array() {
	true
}

init_check_array_name() {
	true
}

init_check_array_path() {
	true
}

init_check_array_paths() {
	true
}

init_check_command() {
	if ! "$1"; then
		error "$ION__MSG_COMMAND_NOT_FOUND" "$2" || return
	fi
}

init_check_env() {
	init_check_dir ION_TEMP "$ION_TEMP" || return

	init_check_string ION___ERROR_PREFIX_MAIN "$ION___ERROR_PREFIX_MAIN" || return
	init_check_string ION___ERROR_PREFIX_SUB "$ION___ERROR_PREFIX_SUB" || return
	init_check_string ION___ERROR_PREFIX_SUBL "$ION___ERROR_PREFIX_SUBL" || return
	init_check_string ION___ERROR_PREFIX_SUBR "$ION___ERROR_PREFIX_SUBR" || return
	init_check_string ION___ERROR_INFIX_MAIN "$ION___ERROR_INFIX_MAIN" || return
	init_check_string ION___ERROR_INFIX_SUB "$ION___ERROR_INFIX_SUB" || return

	init_check_string ION___SUFFIX_SECONDS "$ION___SUFFIX_SECONDS" || return

	init_check_string ION___QUERY_PHRASE "$ION___QUERY_PHRASE" || return
	init_check_string ION___QUERY_CLAUSE "$ION___QUERY_CLAUSE" || return
	init_check_string ION___QUERY_SENTENCE "$ION___QUERY_SENTENCE" || return
	init_check_string ION___QUERY_PARAGRAPH "$ION___QUERY_PARAGRAPH" || return
	init_check_uint ION___QUERY_SUBJECT "$ION___QUERY_SUBJECT" || return
	init_check_uint ION___QUERY_VERB "$ION___QUERY_VERB" || return
	init_check_string ION___QUERY_ALL "$ION___QUERY_ALL" || return
	init_check_string ION___QUERY_SEPARATOR "$ION___QUERY_SEPARATOR" || return
	init_check_string ION___QUERY_NESTED_LEFT "$ION___QUERY_NESTED_LEFT" || return
	init_check_string ION___QUERY_NESTED_RIGHT "$ION___QUERY_NESTED_RIGHT" || return

	init_check_string ION___TITLE_SEPARATOR "$ION___TITLE_SEPARATOR" || return
	init_check_string ION___TYPE_SEPARATOR "$ION___TYPE_SEPARATOR" || return

	init_check_string ION___SIGNAL_ALL "$ION___SIGNAL_ALL" || return
	init_check_string ION___SIGNAL_INPUT "$ION___SIGNAL_INPUT" || return
	init_check_string ION___SIGNAL_SOURCE "$ION___SIGNAL_SOURCE" || return

	init_check_name ION__EXT_JS "$ION__EXT_JS" || return
	init_check_name ION__EXT_CSS "$ION__EXT_CSS" || return
	init_check_name ION__EXT_MAP "$ION__EXT_MAP" || return
	init_check_name ION__EXT_HTML "$ION__EXT_HTML" || return
	init_check_name ION__EXT_JSON "$ION__EXT_JSON" || return
	init_check_name ION__EXT_META "$ION__EXT_META" || return
	init_check_name ION__EXT_PANDOC "$ION__EXT_PANDOC" || return

	init_check_name ION__WORD_INFO "$ION__WORD_INFO" || return
	init_check_name ION__WORD_NOTE "$ION__WORD_NOTE" || return
	init_check_name ION__WORD_ERROR "$ION__WORD_ERROR" || return
	init_check_name ION__WORD_LOG "$ION__WORD_LOG" || return
	init_check_name ION__WORD_INBOX "$ION__WORD_INBOX" || return
	init_check_name ION__WORD_INDEX "$ION__WORD_INDEX" || return
	init_check_name ION__WORD_BUILD "$ION__WORD_BUILD" || return
	init_check_name ION__WORD_SOURCE "$ION__WORD_SOURCE" || return
	init_check_name ION__WORD_MAIN "$ION__WORD_MAIN" || return
	init_check_name ION__WORD_META "$ION__WORD_META" || return
	init_check_name ION__WORD_MESA "$ION__WORD_MESA" || return

	init_check_name ION__NAME_LOG "$ION__NAME_LOG" || return
	init_check_name ION__NAME_PLAN "$ION__NAME_PLAN" || return
	init_check_name ION__NAME_ROOT "$ION__NAME_ROOT" || return
	init_check_name ION__NAME_BRANCH "$ION__NAME_BRANCH" || return
	init_check_name ION__NAME_INDEX_CSS "$ION__NAME_INDEX_CSS" || return
	init_check_name ION__NAME_INDEX_JS "$ION__NAME_INDEX_JS" || return
	init_check_name ION__NAME_MAIN_CSS "$ION__NAME_MAIN_CSS" || return
	init_check_name ION__NAME_MAIN_JS "$ION__NAME_MAIN_JS" || return

	init_check_string ION__MSG_DEV "$ION__MSG_DEV" || return
	init_check_string ION__MSG_COMMAND_NOT_FOUND "$ION__MSG_COMMAND_NOT_FOUND" || return
	init_check_string ION__MSG_COMMAND_NOT_EXEC "$ION__MSG_COMMAND_NOT_EXEC" || return
	init_check_string ION__MSG_COMMAND_NOT_RECOGNISED "$ION__MSG_COMMAND_NOT_RECOGNISED" || return
	init_check_string ION__MSG_INVALID_ENVIRONMENT "$ION__MSG_INVALID_ENVIRONMENT" || return
	init_check_string ION__MSG_INVALID_REPLACEMENT "$ION__MSG_INVALID_REPLACEMENT" || return
	init_check_string ION__MSG_LINKING_FILE "$ION__MSG_LINKING_FILE" || return
	init_check_string ION__MSG_NOT_SLEEPING "$ION__MSG_NOT_SLEEPING" || return
	init_check_string ION__MSG_SLEEPING "$ION__MSG_SLEEPING" || return
	init_check_string ION__MSG_BUILD_START "$ION__MSG_BUILD_START" || return
	init_check_string ION__MSG_MAKING_DIR "$ION__MSG_MAKING_DIR" || return
	init_check_string ION__MSG_MAKING_FILE "$ION__MSG_MAKING_FILE" || return
	init_check_string ION__MSG_MOVING_FILE "$ION__MSG_MOVING_FILE" || return
	init_check_string ION__MSG_NOT_POSIX "$ION__MSG_NOT_POSIX" || return
	init_check_string ION__MSG_REMOVING_FILE "$ION__MSG_REMOVING_FILE" || return
	init_check_string ION__MSG_RUNNING_COMMAND "$ION__MSG_RUNNING_COMMAND" || return
	init_check_string ION__MSG_RUNNING_COMMAND_BG "$ION__MSG_RUNNING_COMMAND_BG" || return
	init_check_string ION__MSG_RUNNING_COMMAND_MANY "$ION__MSG_RUNNING_COMMAND_MANY" || return
	init_check_string ION__MSG_RUNNING_TESTS "$ION__MSG_RUNNING_TESTS" || return
	init_check_string ION__MSG_NOTICED_CHANGE "$ION__MSG_NOTICED_CHANGE" || return
	init_check_string ION__MSG_BUILD_STEP "$ION__MSG_BUILD_STEP" || return
	init_check_string ION__MSG_BUILD_ACTION "$ION__MSG_BUILD_ACTION" || return
	init_check_string ION__MSG_BUILD_IO_READ "$ION__MSG_BUILD_IO_READ" || return
	init_check_string ION__MSG_BUILD_IO_WRITE "$ION__MSG_BUILD_IO_WRITE" || return
	init_check_string ION__MSG_STARTING_SERVERS "$ION__MSG_STARTING_SERVERS" || return
	init_check_string ION__MSG_STARTING_WATCHER "$ION__MSG_STARTING_WATCHER" || return
	init_check_string ION__MSG_STOPPING_WATCHER "$ION__MSG_STOPPING_WATCHER" || return
	init_check_string ION__MSG_STOPPING_SERVERS "$ION__MSG_STOPPING_SERVERS" || return
	init_check_string ION__MSG_STOPPING_BUILD "$ION__MSG_STOPPING_BUILD" || return
	init_check_string ION__MSG_OPENING_FILE "$ION__MSG_OPENING_FILE" || return
	init_check_string ION__MSG_QUERYING_THE_INDEX "$ION__MSG_QUERYING_THE_INDEX" || return
	init_check_string ION__MSG_QUERY_FOUND_AN_ENTRY "$ION__MSG_QUERY_FOUND_AN_ENTRY" || return

	init_check_name ION__ACTION_SOURCE "$ION__ACTION_SOURCE" || return
	init_check_name ION__ACTION_INDEX "$ION__ACTION_INDEX" || return
	init_check_name ION__ACTION_META "$ION__ACTION_META" || return
	init_check_name ION__ACTION_MESA "$ION__ACTION_MESA" || return
	init_check_name ION__ACTION_HTML "$ION__ACTION_HTML" || return

	init_check_name ION__VERB_IDENTITY "$ION__VERB_IDENTITY" || return

	init_check_name ION__TYPE_TRUE "$ION__TYPE_TRUE" || return
	init_check_name ION__TYPE_FALSE "$ION__TYPE_FALSE" || return
	init_check_name ION__TYPE_ARRAY "$ION__TYPE_ARRAY" || return
	init_check_name ION__TYPE_OBJECT "$ION__TYPE_OBJECT" || return
	init_check_name ION__TYPE_STRING "$ION__TYPE_STRING" || return
	init_check_name ION__TYPE_NUMBER "$ION__TYPE_NUMBER" || return
	init_check_name ION__TYPE_BOOLEAN "$ION__TYPE_BOOLEAN" || return
	init_check_name ION__TYPE_NULL "$ION__TYPE_NULL" || return
	init_check_name ION__TYPE_NAME "$ION__TYPE_NAME" || return
	init_check_name ION__TYPE_TEXT "$ION__TYPE_TEXT" || return
	init_check_name ION__TYPE_PATH "$ION__TYPE_PATH" || return
	init_check_name ION__TYPE_PATHS "$ION__TYPE_PATHS" || return
	init_check_name ION__TYPE_REFERENCE "$ION__TYPE_REFERENCE" || return
	init_check_name ION__TYPE_RELATIONSHIP "$ION__TYPE_RELATIONSHIP" || return

	init_check_name ION__META_TYPE "$ION__META_TYPE" || return
	init_check_name ION__META_TYPE_FILE "$ION__META_TYPE_FILE" || return
	init_check_name ION__META_TYPE_DIRECTORY "$ION__META_TYPE_DIRECTORY" || return
	init_check_name ION__META_TYPE_DATA "$ION__META_TYPE_DATA" || return
	init_check_name ION__META_TYPE_DOCUMENT "$ION__META_TYPE_DOCUMENT" || return
	init_check_name ION__META_TYPE_CODE "$ION__META_TYPE_CODE" || return
	init_check_name ION__META_TYPE_STYLE "$ION__META_TYPE_STYLE" || return
	init_check_name ION__META_TYPE_SCRIPT "$ION__META_TYPE_SCRIPT" || return
	init_check_name ION__META_TYPE_IMAGE "$ION__META_TYPE_IMAGE" || return
	init_check_name ION__META_TYPE_AUDIO "$ION__META_TYPE_AUDIO" || return
	init_check_name ION__META_TYPE_VIDEO "$ION__META_TYPE_VIDEO" || return
	init_check_name ION__META_TYPE_OBJECT "$ION__META_TYPE_OBJECT" || return
	init_check_name ION__META_TYPE_MAP "$ION__META_TYPE_MAP" || return
	init_check_name ION__META_TYPE_FONT "$ION__META_TYPE_FONT" || return
	init_check_name ION__META_SCAN "$ION__META_SCAN" || return
	init_check_name ION__META_PATH "$ION__META_PATH" || return
	init_check_name ION__META_NAME "$ION__META_NAME" || return
	init_check_name ION__META_EXTENSION "$ION__META_EXTENSION" || return
	init_check_name ION__META_DOMAIN "$ION__META_DOMAIN" || return
	init_check_name ION__META_HASH "$ION__META_HASH" || return
	init_check_name ION__META_STAMP "$ION__META_STAMP" || return
	init_check_name ION__META_SIGNER "$ION__META_SIGNER" || return
	init_check_name ION__META_SIGNATURE "$ION__META_SIGNATURE" || return
	init_check_name ION__META_SALT "$ION__META_SALT" || return
	init_check_name ION__META_LOCATION "$ION__META_LOCATION" || return
	init_check_name ION__META_ITERATION "$ION__META_ITERATION" || return
	init_check_name ION__META_MODIFIED "$ION__META_MODIFIED" || return
	init_check_name ION__META_SIZE "$ION__META_SIZE" || return
	init_check_name ION__META_WIDTH "$ION__META_WIDTH" || return
	init_check_name ION__META_HEIGHT "$ION__META_HEIGHT" || return
	init_check_name ION__META_DEPTH "$ION__META_DEPTH" || return
	init_check_name ION__META_LENGTH "$ION__META_LENGTH" || return
	init_check_name ION__META_DIRECTION "$ION__META_DIRECTION" || return
	init_check_name ION__META_ENCODING "$ION__META_ENCODING" || return
	init_check_name ION__META_ALPHABET "$ION__META_ALPHABET" || return
	init_check_name ION__META_LANGUAGE "$ION__META_LANGUAGE" || return
	init_check_name ION__META_WORDMARK "$ION__META_WORDMARK" || return
	init_check_name ION__META_FLAG "$ION__META_FLAG" || return
	init_check_name ION__META_ICON "$ION__META_ICON" || return
	init_check_name ION__META_TITLE "$ION__META_TITLE" || return
	init_check_name ION__META_DESCRIPTION "$ION__META_DESCRIPTION" || return
	init_check_name ION__META_PUBLISHED "$ION__META_PUBLISHED" || return
	init_check_name ION__META_AUTHORS "$ION__META_AUTHORS" || return
	init_check_name ION__META_ALBUM "$ION__META_ALBUM" || return
	init_check_name ION__META_PUBLIC "$ION__META_PUBLIC" || return
	init_check_name ION__META_COVER "$ION__META_COVER" || return
	init_check_name ION__META_CATEGORY "$ION__META_CATEGORY" || return
	init_check_name ION__META_LABELS "$ION__META_LABELS" || return
	init_check_name ION__META_FROM "$ION__META_FROM" || return
	init_check_name ION__META_PARENT "$ION__META_PARENT" || return
	init_check_name ION__META_RELATED "$ION__META_RELATED" || return
	init_check_name ION__META_PREVIOUSLY "$ION__META_PREVIOUSLY" || return
	init_check_name ION__META_REFERENCES "$ION__META_REFERENCES" || return
	init_check_name ION__META_DEPENDENCIES "$ION__META_DEPENDENCIES" || return
	init_check_name ION__META_TRANSLATIONS "$ION__META_TRANSLATIONS" || return
	init_check_name ION__META_DERIVATIVES "$ION__META_DERIVATIVES" || return

	init_check_string ION__ATTR_CURRENT "$ION__ATTR_CURRENT" || return
	init_check_string ION__ATTR_QUERY "$ION__ATTR_QUERY" || return
	init_check_string ION__ATTR_MULTIPLE "$ION__ATTR_MULTIPLE" || return
	init_check_string ION__ATTR_NESTED "$ION__ATTR_NESTED" || return
	init_check_string ION__ATTR_KEY "$ION__ATTR_KEY" || return
	init_check_string ION__ATTR_TYPE "$ION__ATTR_TYPE" || return
	init_check_string ION__ATTR_VALUE "$ION__ATTR_VALUE" || return
	init_check_string ION__ATTR_NAME "$ION__ATTR_NAME" || return
	init_check_string ION__ATTR_STATE "$ION__ATTR_STATE" || return

	init_check_name ION__CLASS_INDEX "$ION__CLASS_INDEX" || return
	init_check_name ION__CLASS_PAGE "$ION__CLASS_PAGE" || return
	init_check_name ION__CLASS_WORD "$ION__CLASS_WORD" || return
	init_check_name ION__CLASS_HEADER "$ION__CLASS_HEADER" || return
	init_check_name ION__CLASS_FORM "$ION__CLASS_FORM" || return
	init_check_name ION__CLASS_INPUT "$ION__CLASS_INPUT" || return
	init_check_name ION__CLASS_MESSAGE "$ION__CLASS_MESSAGE" || return
	init_check_name ION__CLASS_CHOICE "$ION__CLASS_CHOICE" || return
	init_check_name ION__CLASS_REQUIRED "$ION__CLASS_REQUIRED" || return
	init_check_name ION__CLASS_COMPONENT "$ION__CLASS_COMPONENT" || return
	init_check_name ION__CLASS_STARTED "$ION__CLASS_STARTED" || return
	init_check_name ION__CLASS_NO_JS "$ION__CLASS_NO_JS" || return

	init_check_path ION_DEV_URANDOM "$ION_DEV_URANDOM" || return

	init_check_uint ION_SERVE "$ION_SERVE" || return
	init_check_bool ION_SERVE_WWW "$ION_SERVE_WWW" || return
	init_check_bool ION_SERVE_PRODUCTION "$ION_SERVE_PRODUCTION" || return
	! test "$ION_SERVE_PORT" || init_check_uint ION_SERVE_PORT "$ION_SERVE_PORT" || return

	init_check_bool ION_SPIN "$ION_SPIN" || return
	! test "$ION_SPIN_START" || init_check_uint ION_SPIN_START "$ION_SPIN_START" || return
	init_check_uint ION_SPIN_INTERVAL "$ION_SPIN_INTERVAL" || return

	init_check_bool ION_WATCH "$ION_WATCH" || return
	init_check_bool ION_WATCH_CLEAR "$ION_WATCH_CLEAR" || return
	! test "$ION_WATCH_THROTTLE" || init_check_unum ION_WATCH_THROTTLE "$ION_WATCH_THROTTLE" || return
	! test "$ION_WATCH_DEBOUNCE" || init_check_unum ION_WATCH_DEBOUNCE "$ION_WATCH_DEBOUNCE" || return
	init_check_bool ION_WATCH_POLLING "$ION_WATCH_POLLING" || return

	! test "$ION_BUILD" || init_check_dir ION_BUILD "$ION_BUILD" || return
	! test "$ION_BUILD_STEP" || init_check_uint ION_BUILD_STEP "$ION_BUILD_STEP" || return
	! test "$ION_BUILD_CURRENT" || init_check_dir ION_BUILD_CURRENT "$ION_BUILD_CURRENT" || return
	! test "$ION_BUILD_PREVIOUS" || init_check_dir ION_BUILD_PREVIOUS "$ION_BUILD_PREVIOUS" || return
	init_check_bool ION_BUILD_INITIAL "$ION_BUILD_INITIAL" || return
	init_check_bool ION_DERIVE_SCRIPT "$ION_DERIVE_SCRIPT" || return
	init_check_bool ION_DERIVE_SCRIPT_GLOBAL "$ION_DERIVE_SCRIPT_GLOBAL" || return
	init_check_bool ION_DERIVE_STYLE "$ION_DERIVE_STYLE" || return
	init_check_bool ION_DERIVE_STYLE_GLOBAL "$ION_DERIVE_STYLE_GLOBAL" || return
	init_check_bool ION_DERIVE_KNOWNS "$ION_DERIVE_KNOWNS" || return
	init_check_bool ION_DERIVE_UNKNOWNS "$ION_DERIVE_UNKNOWNS" || return
	init_check_bool ION_DERIVE_META "$ION_DERIVE_META" || return
	init_check_bool ION_DERIVE_MESA "$ION_DERIVE_MESA" || return
	init_check_bool ION_DERIVE_HTML "$ION_DERIVE_HTML" || return

	! test "$ION_INBOX" || init_check_dir ION_INBOX "$ION_INBOX" || return
	init_check_uint ION_INBOX_PORT "$ION_INBOX_PORT" || return
	init_check_uint ION_INBOX_RATES "$ION_INBOX_RATES" || return

	init_check_path ION_LINK_PREFIX "$ION_LINK_PREFIX" || return
	init_check_bool ION_LINK_PROTOCOL "$ION_LINK_PROTOCOL" || return
	init_check_bool ION_LINK_DOMAIN "$ION_LINK_DOMAIN" || return
	init_check_bool ION_LINK_TRIM "$ION_LINK_TRIM" || return

	init_check_uint ION_EXTRACT_MAXIMUM "$ION_EXTRACT_MAXIMUM" || return
	! test "$ION_EXTRACT_SUFFIX" || init_check_string ION_EXTRACT_SUFFIX "$ION_EXTRACT_SUFFIX" || return

	init_check_paths ION_SOURCE "$ION_SOURCE" || return
	init_check_paths ION_SOURCE_STYLES "$ION_SOURCE_STYLES" || return
	init_check_paths ION_SOURCE_SCRIPTS "$ION_SOURCE_SCRIPTS" || return

	init_check_uint ION_START_ID "$ION_START_ID" || return
	init_check_string ION_START_PRE "$ION_START_PRE" || return
	! test "$ION_START_POST" || init_check_string ION_START_POST "$ION_START_POST" || return
	! test "$ION_START_ARGS" || init_check_string ION_START_ARGS "$ION_START_ARGS" || return

	init_check_name ION_DOMAIN "$ION_DOMAIN" || return
	init_check_string ION_SYNTAX "$ION_SYNTAX" || return
	init_check_array_paths ION_COGNATES "$ION_COGNATES" || return

	init_check_dir ION_TEMP "$ION_TEMP" || return
	init_check_bool ION_TEST "$ION_TEST" || return
	init_check_bool ION_WORDS "$ION_WORDS" || return

	init_check_uint ION_VOLUME "$ION_VOLUME" || return
	init_check_uint ION_MINIFY "$ION_MINIFY" || return
	! test "$ION_PARALLEL" || init_check_uint ION_PARALLEL "$ION_PARALLEL" || return
	init_check_bool ION_CLUSTER "$ION_CLUSTER" || return

	! test "$ION_INPUT" || init_check_dir ION_INPUT "$ION_INPUT" || return
	init_check_paths ION_MIRRORS "$ION_MIRRORS" || return
}

init_check_bsd() {
	if test "$ION_BIN_STAT" && ! test "$ION_BIN_STAT_BSD"; then
		if test "$("$ION_BIN_STAT" -f '%z' /dev/null 2>/dev/null)" = 0; then
			export ION_BIN_STAT_BSD=1
		else
			export ION_BIN_STAT_BSD=0
		fi
	fi
}

init_check_gnu() {
	if test "$ION_BIN_STAT" && ! test "$ION_BIN_STAT_GNU"; then
		if test "$("$ION_BIN_STAT" -c '%s' /dev/null 2>/dev/null)" = 0; then
			export ION_BIN_STAT_GNU=1
		else
			export ION_BIN_STAT_GNU=0
		fi
	fi

	if test "$ION_BIN_FIND" && ! test "$ION_BIN_FIND_GNU"; then
		if test "$("$ION_BIN_FIND" /dev/null -printf '%s' 2>/dev/null)" = 0; then
			export ION_BIN_FIND_GNU=1
		else
			export ION_BIN_FIND_GNU=0
		fi
	fi

	if test "$ION_BIN_XARGS" && ! test "$ION_BIN_XARGS_GNU"; then
		if "$ION_BIN_XARGS" -d"$NEWLINE" </dev/null >/dev/null 2>&1; then
			export ION_BIN_XARGS_GNU=1
		else
			export ION_BIN_XARGS_GNU=0
		fi
	fi
}

init_check_commands() {
	init_check_posix || return
	init_check_bsd || return
	init_check_gnu || return

	init_check_command have_find "bfs or stat" || return
	init_check_command have_hash "openssl" || return
	init_check_command have_random "openssl" || return

	init_check_command can_build "xargs" || return
	init_check_command can_watch "fswatch" || return
	init_check_command can_serve "tcpserver and caddy" || return
}

init_check() {
	init_check_env || return
	init_check_commands || return
}

init_temp_sed() {
	if ! test "$TEMP_SED"; then
		TEMP_SED="$(start_temp_file sed)" || return
	fi
}

init_temp_blank() {
	if ! test "$TEMP_BLANK"; then
		TEMP_BLANK="$(start_temp_file blank md)" || return
	fi
}

init_temp_watch_lock() {
	if ! test "$TEMP_WATCH_LOCK"; then
		TEMP_WATCH_LOCK="$(start_temp_path watch-lock)" || return
	fi
}

init_temp_watch_stream() {
	if ! test "$TEMP_WATCH_STREAM"; then
		TEMP_WATCH_STREAM="$(start_temp_file watch-stream)" || return
	fi
}

init_temp_server_config() {
	if ! test "$TEMP_SERVER_CONFIG"; then
		TEMP_SERVER_CONFIG="$(start_temp_file server-config)" || return
	fi
}

init_temp_filter_empty() {
	if ! test "$TEMP_FILTER_EMPTY"; then
		TEMP_FILTER_EMPTY="$(start_temp_file filter-empty lua)" || return
		print "$SHARED_LUA" > "$TEMP_FILTER_EMPTY" || return
		print "$FILTER_EMPTY" >> "$TEMP_FILTER_EMPTY" || return
	fi
}

init_temp_filter_test() {
	if ! test "$TEMP_FILTER_TEST"; then
		TEMP_FILTER_TEST="$(start_temp_file filter-test lua)" || return
		print "$SHARED_LUA" > "$TEMP_FILTER_TEST" || return
		print "$FILTER_TEST" >> "$TEMP_FILTER_TEST" || return
	fi
}

init_temp_filter_extract() {
	if ! test "$TEMP_FILTER_EXTRACT"; then
		TEMP_FILTER_EXTRACT="$(start_temp_file filter-extract lua)" || return
		print "$SHARED_LUA" > "$TEMP_FILTER_EXTRACT" || return
		print "$FILTER_EXTRACT" >> "$TEMP_FILTER_EXTRACT" || return
	fi
}

init_temp_filter_meta() {
	if ! test "$TEMP_FILTER_META"; then
		TEMP_FILTER_META="$(start_temp_file filter-meta lua)" || return
		print "$SHARED_LUA" > "$TEMP_FILTER_META" || return
		print "$FILTER_META" >> "$TEMP_FILTER_META" || return
	fi
}

init_temp_filter_document() {
	if ! test "$TEMP_FILTER_DOCUMENT"; then
		TEMP_FILTER_DOCUMENT="$(start_temp_file filter-document lua)" || return
		print "$SHARED_LUA" > "$TEMP_FILTER_DOCUMENT" || return
		print "$FILTER_DOCUMENT" >> "$TEMP_FILTER_DOCUMENT" || return
	fi
}

init_temp_template_json() {
	if ! test "$TEMP_TEMPLATE_JSON"; then
		TEMP_TEMPLATE_JSON="$(start_temp_file template-json template)" || return
		print "\$meta-json\$" > "$TEMP_TEMPLATE_JSON" || return
	fi
}

init_temp_template_html() {
	if ! test "$TEMP_TEMPLATE_HTML"; then
		TEMP_TEMPLATE_HTML="$(start_temp_file template-html template)" || return
		print "$TEMPLATE_HTML" > "$TEMP_TEMPLATE_HTML" || return
	fi
}

init_temp_source_style() {
	TEMP_SOURCE_STYLES="$(start_temp_file src css)" || return

	if building_style_global; then
		print "$GLOBAL_CSS" > "$TEMP_SOURCE_STYLES" || return
	fi

	paths_split_raw "$ION_SOURCE_STYLES" | {
		while IFS= read -r ek__path; do
			if test "$ek__path"; then
				printf '@import "%s";\n' "$ek__path" >> "$TEMP_SOURCE_STYLES" || continue
			fi
		done
	}
}

init_temp_source_script() {
	TEMP_SOURCE_SCRIPTS="$(start_temp_file src js)" || return

	if building_script_global; then
		print "'use strict';" > "$TEMP_SOURCE_SCRIPTS" || return
	fi

	paths_split_raw "$ION_SOURCE_SCRIPTS" | {
		el__i=0

		while IFS= read -r el__path; do
			el__i=$((el__i+1))

			if test "$el__path"; then
				printf 'import f%d from "%s";\n' "$el__i" "$el__path" >> "$TEMP_SOURCE_SCRIPTS" || continue
			fi
		done
	}

	if building_script_global; then
		print "$GLOBAL_JS_ENV" >> "$TEMP_SOURCE_SCRIPTS" || return
		print "$GLOBAL_JS" >> "$TEMP_SOURCE_SCRIPTS" || return
	fi

	paths_split_raw "$ION_SOURCE_SCRIPTS" | {
		el__i=0

		while IFS= read -r _; do
			el__i=$((el__i+1))
			printf 'typeof f%d === "function" && f%d();\n' "$el__i" "$el__i" >> "$TEMP_SOURCE_SCRIPTS" || continue
		done
	}

	if building_script_global; then
		printf 'main();\n' >> "$TEMP_SOURCE_SCRIPTS" || return
	fi
}

init_temp_build() {
	if ! test "$ION_BUILD"; then
		ds__temp="$(start_temp_dir build)" || return
		export ION_BUILD="$ds__temp"
		BUILD_TEMP=1
	fi
}

init_temp_shared() {
	init_temp_sed || return
	init_temp_blank || return
	init_temp_filter_empty || return
	init_temp_filter_test || return
	init_temp_filter_extract || return
	init_temp_filter_meta || return
	init_temp_filter_document || return
	init_temp_template_json || return
	init_temp_template_html || return
}

init_temp_parent() {
	init_temp_watch_lock || return
	init_temp_watch_stream || return
	init_temp_server_config || return
	init_temp_source_style || return
	init_temp_source_script || return
	init_temp_build || return
}

init() {
	if test "$STARTED"; then
		return
	fi

	STARTED=1

	init_basics || return
	init_signals || return
	init_temp_shared || return

	if ! have_parent; then
		init_env || return
		init_check || return
		init_temp_parent || return
	fi

	if test "$ION_START_ID" = 1; then
		export ION_START_ID=$$
	fi
}

test_all() {
	note "$ION__MSG_RUNNING_TESTS"

	if have_shellcheck; then
		start "$ION_BIN_SHELLCHECK" "$ION_BIN_SELF" || return
	fi

	if have_luac; then
		start "$ION_BIN_LUAC" -p \
			"$TEMP_FILTER_EMPTY" \
			"$TEMP_FILTER_TEST" \
			"$TEMP_FILTER_EXTRACT" \
			"$TEMP_FILTER_META" \
			"$TEMP_FILTER_DOCUMENT" \
		|| return
	fi

	if have_pandoc; then
		start_pandoc tests || return
	fi
}

usage() {
	echo hello world
}

main() {
	init "$@" || exit 1

	if should_help; then
		usage || exit 2
	elif should_handle; then
		http_handle || exit 3
	elif should_derive; then
		derive "$@" || exit 4
	elif ! have_parent; then
		if should_test; then
			test_all || exit 5
		fi

		if should_watch; then
			start_watcher || exit 6
		fi

		start_builder || exit 7
	fi
}

main "$@"
