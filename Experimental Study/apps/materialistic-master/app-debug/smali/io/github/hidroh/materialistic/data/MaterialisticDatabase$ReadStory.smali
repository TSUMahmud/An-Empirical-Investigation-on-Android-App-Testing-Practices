.class public Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
.super Ljava/lang/Object;
.source "MaterialisticDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadStory"
.end annotation


# instance fields
.field private id:I

.field private itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->itemId:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;

    .line 134
    .local v2, "readStory":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
    iget v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->id:I

    iget v4, v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->id:I

    if-eq v3, v4, :cond_2

    return v1

    .line 135
    :cond_2
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->itemId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->itemId:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 130
    .end local v2    # "readStory":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
    :cond_5
    :goto_1
    return v1
.end method

.method public getId()I
    .locals 1

    .line 112
    iget v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->id:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 140
    iget v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->id:I

    .line 141
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->itemId:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 142
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 116
    iput p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->id:I

    .line 117
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->itemId:Ljava/lang/String;

    .line 125
    return-void
.end method
