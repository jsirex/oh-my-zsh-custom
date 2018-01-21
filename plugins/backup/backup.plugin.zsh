backup-my-pc() {
    TARGET_DIR="$1"
    BACKUP_FILE_NAME="`hostname -s`-backup-`date +%F`.tar.bz2"
    FULL_BACKUP_FILE_NAME=$TARGET_DIR/$BACKUP_FILE_NAME

    EXCLUDE_FILE=~/.oh-my-zsh/custom/plugins/backup/backup.list

    if [ -z "$TARGET_DIR" ]; then
        echo "Specify target backup directory"
        return 1
    fi

    if [ ! -d "$TARGET_DIR" ]; then
        echo "Target directory: $TARGET_DIR not found"
        return 1
    fi

    echo "Performing backup. This may take long time. Started at: `date`"
    echo "Target directory: $TARGET_DIR"
    echo "Target file: $FULL_BACKUP_FILE_NAME"

    sudo ionice tar --exclude-from=$(readlink -f $EXCLUDE_FILE) --exclude=$FULL_BACKUP_FILE_NAME -cvpjf $FULL_BACKUP_FILE_NAME --one-file-system /

    echo "Ended at `date`"
}
