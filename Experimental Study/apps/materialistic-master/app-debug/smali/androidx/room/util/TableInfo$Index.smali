.class public Landroidx/room/util/TableInfo$Index;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Index"
.end annotation


# instance fields
.field public final columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final unique:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p3, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    .line 547
    iput-boolean p2, p0, Landroidx/room/util/TableInfo$Index;->unique:Z

    .line 548
    iput-object p3, p0, Landroidx/room/util/TableInfo$Index;->columns:Ljava/util/List;

    .line 549
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 553
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 554
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/room/util/TableInfo$Index;

    .line 557
    .local v1, "index":Landroidx/room/util/TableInfo$Index;
    iget-boolean v2, p0, Landroidx/room/util/TableInfo$Index;->unique:Z

    iget-boolean v3, v1, Landroidx/room/util/TableInfo$Index;->unique:Z

    if-eq v2, v3, :cond_2

    .line 558
    return v0

    .line 560
    :cond_2
    iget-object v2, p0, Landroidx/room/util/TableInfo$Index;->columns:Ljava/util/List;

    iget-object v3, v1, Landroidx/room/util/TableInfo$Index;->columns:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 561
    return v0

    .line 563
    :cond_3
    iget-object v0, p0, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    const-string v2, "index_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    iget-object v0, v1, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    const-string v2, "index_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 566
    :cond_4
    iget-object v0, p0, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    iget-object v2, v1, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 554
    .end local v1    # "index":Landroidx/room/util/TableInfo$Index;
    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 573
    iget-object v0, p0, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    const-string v1, "index_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "index_"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 578
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/room/util/TableInfo$Index;->unique:Z

    add-int/2addr v1, v2

    .line 579
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/room/util/TableInfo$Index;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 580
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", unique="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Index;->unique:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo$Index;->columns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
