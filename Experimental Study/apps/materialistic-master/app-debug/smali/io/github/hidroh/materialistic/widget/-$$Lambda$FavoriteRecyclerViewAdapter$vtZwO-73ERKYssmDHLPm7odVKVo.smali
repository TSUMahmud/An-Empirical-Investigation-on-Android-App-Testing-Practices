.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$vtZwO-73ERKYssmDHLPm7odVKVo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/Favorite;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$vtZwO-73ERKYssmDHLPm7odVKVo;->f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$vtZwO-73ERKYssmDHLPm7odVKVo;->f$1:Lio/github/hidroh/materialistic/data/Favorite;

    return-void
.end method


# virtual methods
.method public final showMoreOptions(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$vtZwO-73ERKYssmDHLPm7odVKVo;->f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$vtZwO-73ERKYssmDHLPm7odVKVo;->f$1:Lio/github/hidroh/materialistic/data/Favorite;

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->lambda$bindItem$1(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;Landroid/view/View;)V

    return-void
.end method
