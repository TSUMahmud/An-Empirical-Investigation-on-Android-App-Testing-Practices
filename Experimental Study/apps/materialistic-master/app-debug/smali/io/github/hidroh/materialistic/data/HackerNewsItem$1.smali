.class final Lio/github/hidroh/materialistic/data/HackerNewsItem$1;
.super Ljava/lang/Object;
.source "HackerNewsItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/HackerNewsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 103
    new-instance v0, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    invoke-direct {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem$1;->createFromParcel(Landroid/os/Parcel;)Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .locals 1
    .param p1, "size"    # I

    .line 108
    new-array v0, p1, [Lio/github/hidroh/materialistic/data/HackerNewsItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem$1;->newArray(I)[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-result-object p1

    return-object p1
.end method
