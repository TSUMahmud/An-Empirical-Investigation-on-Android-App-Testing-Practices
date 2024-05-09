.class public Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;
.super Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
.source "ThemePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/preference/ThemePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayNightSpec"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "summary"    # I

    .line 162
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/preference/ThemePreference$DayNightSpec;-><init>(II)V

    .line 163
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "summary"    # I
    .param p2, "themeOverrides"    # I

    .line 166
    const v0, 0x7f110023

    invoke-direct {p0, p1, v0, p2}, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;-><init>(III)V

    .line 167
    return-void
.end method


# virtual methods
.method getTranslucent()Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
    .locals 4

    .line 171
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->translucent:Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    iget v1, p0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->summary:I

    const v2, 0x7f110024

    iget v3, p0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->themeOverrides:I

    invoke-direct {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;-><init>(III)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->translucent:Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    .line 174
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->translucent:Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;

    return-object v0
.end method
