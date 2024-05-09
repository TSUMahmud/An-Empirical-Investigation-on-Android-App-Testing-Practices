.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$-HaY2G_sGJpapXMaf5K-34Rggtg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# instance fields
.field private final synthetic f$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$-HaY2G_sGJpapXMaf5K-34Rggtg;->f$0:Landroidx/appcompat/widget/SearchView;

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$-HaY2G_sGJpapXMaf5K-34Rggtg;->f$0:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0}, Lio/github/hidroh/materialistic/FavoriteFragment;->lambda$createSearchView$2(Landroidx/appcompat/widget/SearchView;)Z

    move-result v0

    return v0
.end method
