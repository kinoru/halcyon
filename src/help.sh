function help_configure_storage () {
	quote <<-EOF
		To configure private storage:
		$ export HALCYON_AWS_ACCESS_KEY_ID=...
		$ export HALCYON_AWS_SECRET_ACCESS_KEY=...
		$ export HALCYON_S3_BUCKET=...

		To configure public storage:
		$ export HALCYON_PUBLIC=1
EOF
}


function help_add_constraints () {
	local constraints
	expect_args constraints -- "$@"

	quote <<-EOF
		To use explicit constraints, add cabal.config:
		$ cat >cabal.config <<EOF
EOF
	echo_constraints <<<"${constraints}" >&2 || die
	echo 'EOF' >&2
}