.class public final synthetic Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Messenger;

.field public final synthetic f$3:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;->f$2:Landroid/os/Messenger;

    iput-object p4, p0, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;->f$3:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;->f$2:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;->f$3:Landroid/os/Message;

    invoke-static {v0, v1, v2, p0}, Lcom/android/settings/AsusTransferDataService;->$r8$lambda$wb96_7x0NvpTVKLwZjBh8mwU4Tc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Message;)V

    return-void
.end method
