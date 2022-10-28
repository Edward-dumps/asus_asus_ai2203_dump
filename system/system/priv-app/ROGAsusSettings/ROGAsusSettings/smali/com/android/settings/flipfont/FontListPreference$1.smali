.class Lcom/android/settings/flipfont/FontListPreference$1;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListPreference;->startFontList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$1;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$1;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v0, p2}, Lcom/android/settings/flipfont/FontListPreference;->access$102(Lcom/android/settings/flipfont/FontListPreference;I)I

    .line 210
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListPreference$1;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
