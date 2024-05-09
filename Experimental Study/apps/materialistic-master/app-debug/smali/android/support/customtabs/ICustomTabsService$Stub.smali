.class public abstract Landroid/support/customtabs/ICustomTabsService$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsService.java"

# interfaces
.implements Landroid/support/customtabs/ICustomTabsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/customtabs/ICustomTabsService;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/support/customtabs/ICustomTabsService;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9

    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 173
    :pswitch_0
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 177
    .local v0, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    goto :goto_0

    .line 183
    :cond_0
    const/4 v3, 0x0

    .line 186
    .local v3, "_arg2":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    goto :goto_1

    .line 190
    :cond_1
    const/4 v4, 0x0

    .line 192
    .local v4, "_arg3":Landroid/os/Bundle;
    :goto_1
    invoke-interface {p0, v0, v2, v3, v4}, Landroid/support/customtabs/ICustomTabsService;->validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v5

    .line 193
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    nop

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    nop

    return v1

    .line 154
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_result":Z
    :pswitch_1
    nop

    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "_arg1":Ljava/lang/String;
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    nop

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_2

    .line 164
    :cond_2
    nop

    const/4 v3, 0x0

    .line 166
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_2
    nop

    invoke-interface {p0, v0, v2, v3}, Landroid/support/customtabs/ICustomTabsService;->postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    .line 167
    .local v4, "_result":I
    nop

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    nop

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    nop

    return v1

    .line 137
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_2
    nop

    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 141
    .restart local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    nop

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_3

    .line 145
    :cond_3
    nop

    const/4 v2, 0x0

    .line 147
    .local v2, "_arg1":Landroid/net/Uri;
    :goto_3
    nop

    invoke-interface {p0, v0, v2}, Landroid/support/customtabs/ICustomTabsService;->requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z

    move-result v3

    .line 148
    .local v3, "_result":Z
    nop

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    nop

    nop

    nop

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    nop

    return v1

    .line 120
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_result":Z
    :pswitch_3
    nop

    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 124
    .restart local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    nop

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_4

    .line 128
    :cond_4
    nop

    const/4 v2, 0x0

    .line 130
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_4
    nop

    invoke-interface {p0, v0, v2}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v3

    .line 131
    .restart local v3    # "_result":Z
    nop

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    nop

    nop

    nop

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    nop

    return v1

    .line 97
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_4
    nop

    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Ljava/lang/String;
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    nop

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_5

    .line 105
    :cond_5
    nop

    const/4 v2, 0x0

    .line 107
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_5
    nop

    invoke-interface {p0, v0, v2}, Landroid/support/customtabs/ICustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 108
    .local v3, "_result":Landroid/os/Bundle;
    nop

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    nop

    if-eqz v3, :cond_6

    .line 110
    nop

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    nop

    invoke-virtual {v3, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 114
    :cond_6
    nop

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    :goto_6
    nop

    return v1

    .line 71
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_5
    nop

    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 75
    .local v0, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    nop

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_7

    .line 79
    :cond_7
    nop

    const/4 v2, 0x0

    .line 82
    .local v2, "_arg1":Landroid/net/Uri;
    :goto_7
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 83
    nop

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_8

    .line 86
    :cond_8
    nop

    const/4 v3, 0x0

    .line 89
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_8
    nop

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 90
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    nop

    invoke-interface {p0, v0, v2, v3, v4}, Landroid/support/customtabs/ICustomTabsService;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v5

    .line 91
    .restart local v5    # "_result":Z
    nop

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    nop

    nop

    nop

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    nop

    return v1

    .line 61
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v5    # "_result":Z
    :pswitch_6
    nop

    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    nop

    invoke-interface {p0, v0}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v2

    .line 65
    .local v2, "_result":Z
    nop

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    nop

    nop

    nop

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    nop

    return v1

    .line 51
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v2    # "_result":Z
    :pswitch_7
    nop

    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 54
    .local v2, "_arg0":J
    nop

    invoke-interface {p0, v2, v3}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z

    move-result v0

    .line 55
    .local v0, "_result":Z
    nop

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    nop

    nop

    nop

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    nop

    return v1

    .line 46
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":J
    :cond_9
    nop

    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    nop

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
