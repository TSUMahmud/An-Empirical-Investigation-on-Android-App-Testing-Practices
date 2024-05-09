.class public Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;
.super Ljava/lang/Object;
.source "ItemPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field cacheMode:I

.field defaultViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

.field item:Lio/github/hidroh/materialistic/data/WebItem;

.field retainInstance:Z

.field showArticle:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCacheMode(I)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;
    .locals 0
    .param p1, "cacheMode"    # I

    .line 173
    iput p1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->cacheMode:I

    .line 174
    return-object p0
.end method

.method public setDefaultViewMode(Lio/github/hidroh/materialistic/Preferences$StoryViewMode;)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;
    .locals 0
    .param p1, "viewMode"    # Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 178
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->defaultViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 179
    return-object p0
.end method

.method public setItem(Lio/github/hidroh/materialistic/data/WebItem;)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;
    .locals 0
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 163
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->item:Lio/github/hidroh/materialistic/data/WebItem;

    .line 164
    return-object p0
.end method

.method public setRetainInstance(Z)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;
    .locals 0
    .param p1, "retainInstance"    # Z

    .line 183
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->retainInstance:Z

    .line 184
    return-object p0
.end method

.method public setShowArticle(Z)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;
    .locals 0
    .param p1, "showArticle"    # Z

    .line 168
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->showArticle:Z

    .line 169
    return-object p0
.end method
