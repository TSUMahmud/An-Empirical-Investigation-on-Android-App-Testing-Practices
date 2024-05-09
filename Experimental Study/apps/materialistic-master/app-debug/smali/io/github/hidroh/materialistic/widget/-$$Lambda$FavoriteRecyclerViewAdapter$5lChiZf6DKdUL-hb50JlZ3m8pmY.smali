.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$5lChiZf6DKdUL-hb50JlZ3m8pmY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/Favorite;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$5lChiZf6DKdUL-hb50JlZ3m8pmY;->f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$5lChiZf6DKdUL-hb50JlZ3m8pmY;->f$1:Lio/github/hidroh/materialistic/data/Favorite;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$5lChiZf6DKdUL-hb50JlZ3m8pmY;->f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$5lChiZf6DKdUL-hb50JlZ3m8pmY;->f$1:Lio/github/hidroh/materialistic/data/Favorite;

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->lambda$showMoreOptions$3(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
