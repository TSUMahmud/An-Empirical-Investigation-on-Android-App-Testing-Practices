.class public Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoolToStringPref"
.end annotation


# instance fields
.field final newKey:I

.field final newValue:I

.field private final oldDefault:Z

.field final oldKey:I


# direct methods
.method constructor <init>(IZII)V
    .locals 0
    .param p1, "oldKey"    # I
    .param p2, "oldDefault"    # Z
    .param p3, "newKey"    # I
    .param p4, "newValue"    # I

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput p1, p0, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->oldKey:I

    .line 393
    iput-boolean p2, p0, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->oldDefault:Z

    .line 394
    iput p3, p0, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->newKey:I

    .line 395
    iput p4, p0, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->newValue:I

    .line 396
    return-void
.end method


# virtual methods
.method hasOldValue(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sp"    # Landroid/content/SharedPreferences;

    .line 406
    iget v0, p0, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->oldKey:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isChanged(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sp"    # Landroid/content/SharedPreferences;

    .line 400
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->hasOldValue(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->oldKey:I

    .line 401
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->oldDefault:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/Preferences$BoolToStringPref;->oldDefault:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0
.end method
