.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/Favorite;

.field private final synthetic f$2:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;->f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;->f$1:Lio/github/hidroh/materialistic/data/Favorite;

    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;->f$2:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;->f$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;->f$1:Lio/github/hidroh/materialistic/data/Favorite;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;->f$2:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->lambda$bindItem$0(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
