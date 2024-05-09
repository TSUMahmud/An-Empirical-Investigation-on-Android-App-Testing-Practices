.class public Lio/github/hidroh/materialistic/data/SearchRecentSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SearchRecentSuggestionsProvider.java"


# static fields
.field public static final MODE:I = 0x1

.field public static final PROVIDER_AUTHORITY:Ljava/lang/String; = "io.github.hidroh.materialistic.recentprovider"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 24
    const-string v0, "io.github.hidroh.materialistic.recentprovider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/SearchRecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 25
    return-void
.end method
