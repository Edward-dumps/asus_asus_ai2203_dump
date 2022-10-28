.class Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController$1;
.super Ljava/lang/Object;
.source "LivemojiPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController$1;->this$0:Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController$1;->this$0:Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;->access$000(Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;->access$100(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method
