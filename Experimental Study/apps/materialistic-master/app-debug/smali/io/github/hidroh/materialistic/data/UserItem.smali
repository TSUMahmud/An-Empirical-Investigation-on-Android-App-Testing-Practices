.class Lio/github/hidroh/materialistic/data/UserItem;
.super Ljava/lang/Object;
.source "UserItem.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/UserManager$User;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/github/hidroh/materialistic/data/UserItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private about:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private created:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private delay:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private karma:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private submitted:[I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private submittedItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lio/github/hidroh/materialistic/data/UserItem$1;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/UserItem$1;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/UserItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lio/github/hidroh/materialistic/data/HackerNewsItem;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->submittedItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->id:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->delay:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->created:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->karma:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->about:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->submitted:[I

    .line 57
    sget-object v0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/hidroh/materialistic/data/HackerNewsItem;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->submittedItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getAbout()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->about:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->created:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const/16 v2, 0x10

    invoke-static {p1, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Lio/github/hidroh/materialistic/data/Item;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->submittedItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    return-object v0
.end method

.method public getKarma()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->karma:J

    return-wide v0
.end method

.method getSubmitted()[I
    .locals 1

    .line 107
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->submitted:[I

    return-object v0
.end method

.method setSubmittedItems([Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
    .locals 1
    .param p1, "submittedItems"    # [Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 103
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lio/github/hidroh/materialistic/data/HackerNewsItem;

    :goto_0
    iput-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->submittedItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->delay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->created:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->karma:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->submitted:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 99
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/UserItem;->submittedItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 100
    return-void
.end method
