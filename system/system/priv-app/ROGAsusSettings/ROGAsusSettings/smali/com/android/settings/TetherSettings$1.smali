.class Lcom/android/settings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)V

    const/4 p0, 0x1

    return p0
.end method
