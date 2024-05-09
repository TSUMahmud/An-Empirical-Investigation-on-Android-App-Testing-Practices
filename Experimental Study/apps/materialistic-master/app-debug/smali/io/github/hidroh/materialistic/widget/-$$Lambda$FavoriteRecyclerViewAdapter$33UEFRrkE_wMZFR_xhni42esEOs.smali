.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lio/github/hidroh/materialistic/data/Favorite;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;ILio/github/hidroh/materialistic/data/Favorite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;->f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iput p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;->f$1:I

    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;->f$2:Lio/github/hidroh/materialistic/data/Favorite;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;->f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;->f$1:I

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;->f$2:Lio/github/hidroh/materialistic/data/Favorite;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->lambda$dismiss$2(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;ILio/github/hidroh/materialistic/data/Favorite;Landroid/view/View;)V

    return-void
.end method
