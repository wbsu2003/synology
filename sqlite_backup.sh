#!/bin/bash
export LC_ALL=C

now=$(date +"%Y%m%d-%H%M%S")
# parent_dir 请根据你自己的安装目录修改
parent_dir="/volume1/docker/bitwarden"
backups_dir="${parent_dir}/backups"
log_file="${backups_dir}/backup-progress.log.${now}"
tmp_sqlite_backup="backups/db.sqlite3.${now}"
archive="backups/backup.tar.gz.${now}"

error () {
  printf "%s: %s\n" "$(basename "${BASH_SOURCE}")" "${1}" >&2
  exit 1
}

trap 'error "An unexpected error occurred."' ERR

take_backup () {
  cd "${parent_dir}"
  
  sqlite3 db.sqlite3 ".backup '${tmp_sqlite_backup}'"
  /bin/tar czf "${archive}" "${tmp_sqlite_backup}" attachments

  rm "${tmp_sqlite_backup}"

  find "${backups_dir}/" -type f -mtime +30 -exec rm {} \;
}

printf "\n======================================================================="
printf "\nBitwarden Backup"
printf "\n======================================================================="
printf "\nBackup in progress..."

take_backup 2> "${log_file}"

if [[ -s "${log_file}" ]]
then
  printf "\nBackup failure! Check ${log_file} for more information."
  printf "\n=======================================================================\n\n"
else
  rm "${log_file}"
  printf "...SUCCESS!\n"
  printf "Backup created at ${backups_dir}/backup.tar.gz.${now}"
  printf "\n=======================================================================\n\n"
fi
