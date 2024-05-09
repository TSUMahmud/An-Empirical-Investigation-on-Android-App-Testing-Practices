.class public Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;
.super Ljava/lang/Object;
.source "MaterialisticDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Readable"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private id:I

.field private itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->itemId:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->content:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 187
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 189
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;

    .line 191
    .local v2, "readable":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;
    iget v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->id:I

    iget v4, v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->id:I

    if-eq v3, v4, :cond_2

    return v1

    .line 192
    :cond_2
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->itemId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->itemId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 193
    :goto_0
    return v1

    .line 194
    :cond_4
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->content:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v0, v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->content:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->content:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 187
    .end local v2    # "readable":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;
    :cond_7
    :goto_2
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 161
    iget v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->id:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 199
    iget v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->id:I

    .line 200
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->itemId:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 201
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->content:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    .line 202
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->content:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 165
    iput p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->id:I

    .line 166
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->itemId:Ljava/lang/String;

    .line 174
    return-void
.end method
