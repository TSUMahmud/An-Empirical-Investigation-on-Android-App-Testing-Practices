.class public Landroidx/room/RoomDatabase$MigrationContainer;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationContainer"
.end annotation


# instance fields
.field private mMigrations:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private addMigration(Landroidx/room/migration/Migration;)V
    .locals 7
    .param p1, "migration"    # Landroidx/room/migration/Migration;

    .line 694
    iget v0, p1, Landroidx/room/migration/Migration;->startVersion:I

    .line 695
    .local v0, "start":I
    iget v1, p1, Landroidx/room/migration/Migration;->endVersion:I

    .line 696
    .local v1, "end":I
    iget-object v2, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/collection/SparseArrayCompat;

    .line 697
    .local v2, "targetMap":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/room/migration/Migration;>;"
    if-nez v2, :cond_0

    .line 698
    new-instance v3, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v3}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object v2, v3

    .line 699
    iget-object v3, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v0, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 701
    :cond_0
    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/migration/Migration;

    .line 702
    .local v3, "existing":Landroidx/room/migration/Migration;
    if-eqz v3, :cond_1

    .line 703
    const-string v4, "ROOM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overriding migration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    invoke-virtual {v2, v1, p1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 706
    return-void
.end method

.method private findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;
    .locals 16
    .param p2, "upgrade"    # Z
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;ZII)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 730
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    move-object/from16 v0, p1

    move/from16 v1, p4

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move/from16 v4, p3

    .line 731
    .end local p3    # "start":I
    .local v3, "searchDirection":I
    .local v4, "start":I
    :goto_1
    if-eqz p2, :cond_2

    if-ge v4, v1, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v5, p0

    goto :goto_7

    :cond_2
    if-le v4, v1, :cond_a

    .line 732
    :goto_2
    move-object/from16 v5, p0

    iget-object v6, v5, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v6, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/collection/SparseArrayCompat;

    .line 733
    .local v6, "targetNodes":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/room/migration/Migration;>;"
    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 734
    return-object v7

    .line 737
    :cond_3
    invoke-virtual {v6}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v8

    .line 741
    .local v8, "size":I
    if-eqz p2, :cond_4

    .line 742
    add-int/lit8 v9, v8, -0x1

    .line 743
    .local v9, "firstIndex":I
    const/4 v10, -0x1

    goto :goto_3

    .line 745
    .end local v9    # "firstIndex":I
    :cond_4
    const/4 v9, 0x0

    .line 746
    .restart local v9    # "firstIndex":I
    move v10, v8

    .line 748
    .local v10, "lastIndex":I
    :goto_3
    const/4 v11, 0x0

    .line 749
    .local v11, "found":Z
    move v12, v9

    .local v12, "i":I
    :goto_4
    if-eq v12, v10, :cond_8

    .line 750
    invoke-virtual {v6, v12}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v13

    .line 752
    .local v13, "targetVersion":I
    const/4 v14, 0x0

    if-eqz p2, :cond_5

    .line 753
    if-gt v13, v1, :cond_6

    if-le v13, v4, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    .line 755
    :cond_5
    if-lt v13, v1, :cond_6

    if-ge v13, v4, :cond_6

    const/4 v14, 0x1

    .line 757
    .local v14, "shouldAddToPath":Z
    :cond_6
    :goto_5
    if-eqz v14, :cond_7

    .line 758
    invoke-virtual {v6, v12}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    move v4, v13

    .line 760
    const/4 v11, 0x1

    .line 761
    goto :goto_6

    .line 749
    .end local v13    # "targetVersion":I
    .end local v14    # "shouldAddToPath":Z
    :cond_7
    add-int/2addr v12, v3

    goto :goto_4

    .line 764
    .end local v12    # "i":I
    :cond_8
    :goto_6
    if-nez v11, :cond_9

    .line 765
    return-object v7

    .line 767
    .end local v6    # "targetNodes":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/room/migration/Migration;>;"
    .end local v8    # "size":I
    .end local v9    # "firstIndex":I
    .end local v10    # "lastIndex":I
    .end local v11    # "found":Z
    :cond_9
    goto :goto_1

    .line 731
    :cond_a
    move-object/from16 v5, p0

    .line 768
    :goto_7
    return-object v0
.end method


# virtual methods
.method public varargs addMigrations([Landroidx/room/migration/Migration;)V
    .locals 3
    .param p1, "migrations"    # [Landroidx/room/migration/Migration;

    .line 688
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 689
    .local v2, "migration":Landroidx/room/migration/Migration;
    invoke-direct {p0, v2}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigration(Landroidx/room/migration/Migration;)V

    .line 688
    .end local v2    # "migration":Landroidx/room/migration/Migration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    :cond_0
    return-void
.end method

.method public findMigrationPath(II)Ljava/util/List;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 720
    if-ne p1, p2, :cond_0

    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 723
    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 724
    .local v0, "migrateUp":Z
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/room/RoomDatabase$MigrationContainer;->findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
