.class public Lio/github/hidroh/materialistic/data/Favorite;
.super Ljava/lang/Object;
.source "Favorite.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/WebItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/github/hidroh/materialistic/data/Favorite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final displayedAuthor:Landroid/text/Spannable;

.field private displayedTime:Landroid/text/Spannable;

.field private favorite:Z

.field private itemId:Ljava/lang/String;

.field private time:J

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lio/github/hidroh/materialistic/data/Favorite$1;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/Favorite$1;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/Favorite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->displayedAuthor:Landroid/text/Spannable;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->itemId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->url:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->title:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->favorite:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->time:J

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "time"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->displayedAuthor:Landroid/text/Spannable;

    .line 56
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/Favorite;->itemId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lio/github/hidroh/materialistic/data/Favorite;->url:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lio/github/hidroh/materialistic/data/Favorite;->title:Ljava/lang/String;

    .line 59
    iput-wide p4, p0, Lio/github/hidroh/materialistic/data/Favorite;->time:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->favorite:Z

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "linkify"    # Z
    .param p3, "color"    # I

    .line 99
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->displayedAuthor:Landroid/text/Spannable;

    return-object v0
.end method

.method public getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->displayedTime:Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f100149

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lio/github/hidroh/materialistic/data/Favorite;->time:J

    .line 106
    invoke-static {v4, v5}, Lio/github/hidroh/materialistic/AppUtils;->getAbbreviatedTimeSpan(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 105
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->displayedTime:Landroid/text/Spannable;

    .line 108
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->displayedTime:Landroid/text/Spannable;

    return-object v0
.end method

.method public getDisplayedTitle()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLongId()J
    .locals 2

    .line 89
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->itemId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getTime()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->time:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "story"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->favorite:Z

    return v0
.end method

.method public isStoryType()Z
    .locals 1

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public setFavorite(Z)V
    .locals 0
    .param p1, "favorite"    # Z

    .line 130
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/data/Favorite;->favorite:Z

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 135
    const-string v0, "%s (%s) - %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/Favorite;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/Favorite;->url:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "https://news.ycombinator.com/item?id=%s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lio/github/hidroh/materialistic/data/Favorite;->itemId:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->favorite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/Favorite;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    return-void
.end method
