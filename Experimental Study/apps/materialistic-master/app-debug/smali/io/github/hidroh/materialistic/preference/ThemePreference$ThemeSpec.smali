.class public Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
.super Ljava/lang/Object;
.source "ThemePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/preference/ThemePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeSpec"
.end annotation


# instance fields
.field final summary:I

.field public final theme:I

.field public final themeOverrides:I

.field translucent:Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "summary"    # I
    .param p2, "theme"    # I
    .param p3, "themeOverrides"    # I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->summary:I

    .line 131
    iput p2, p0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->theme:I

    .line 132
    iput p3, p0, Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;->themeOverrides:I

    .line 133
    return-void
.end method


# virtual methods
.method getTranslucent()Lio/github/hidroh/materialistic/preference/ThemePreference$ThemeSpec;
    .locals 0

    .line 136
    return-object p0
.end method
