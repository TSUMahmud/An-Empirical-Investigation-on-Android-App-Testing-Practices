.class public Landroidx/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public final affinity:I

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "notNull"    # Z
    .param p4, "primaryKeyPosition"    # I

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 349
    iput-object p2, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 350
    iput-boolean p3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 351
    iput p4, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 352
    invoke-static {p2}, Landroidx/room/util/TableInfo$Column;->findAffinity(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 353
    return-void
.end method

.method private static findAffinity(Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .line 363
    const/4 v0, 0x5

    if-nez p0, :cond_0

    .line 364
    return v0

    .line 366
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "uppercaseType":Ljava/lang/String;
    const-string v2, "INT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const/4 v0, 0x3

    return v0

    .line 370
    :cond_1
    const-string v2, "CHAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "CLOB"

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "TEXT"

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 375
    :cond_2
    const-string v2, "BLOB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    return v0

    .line 378
    :cond_3
    const-string v0, "REAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "FLOA"

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "DOUB"

    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 385
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_5
    :goto_0
    const/4 v0, 0x4

    return v0

    .line 373
    :cond_6
    :goto_1
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 390
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 391
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 393
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/room/util/TableInfo$Column;

    .line 394
    .local v2, "column":Landroidx/room/util/TableInfo$Column;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_2

    .line 395
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    iget v4, v2, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-eq v3, v4, :cond_3

    return v1

    .line 397
    :cond_2
    invoke-virtual {p0}, Landroidx/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v3

    invoke-virtual {v2}, Landroidx/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    .line 400
    :cond_3
    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    iget-object v4, v2, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 402
    :cond_4
    iget-boolean v3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    iget-boolean v4, v2, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eq v3, v4, :cond_5

    return v1

    .line 403
    :cond_5
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    iget v4, v2, Landroidx/room/util/TableInfo$Column;->affinity:I

    if-ne v3, v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 391
    .end local v2    # "column":Landroidx/room/util/TableInfo$Column;
    :cond_7
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 417
    iget-object v0, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 418
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    add-int/2addr v1, v2

    .line 419
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v0, v2

    .line 420
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    add-int/2addr v1, v2

    .line 421
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isPrimaryKey()Z
    .locals 1

    .line 412
    iget v0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", affinity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
