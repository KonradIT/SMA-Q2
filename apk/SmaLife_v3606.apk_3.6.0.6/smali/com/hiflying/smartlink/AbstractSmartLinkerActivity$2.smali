.class Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$2;
.super Ljava/lang/Object;
.source "AbstractSmartLinkerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V

    .line 62
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v0}, Lcom/hiflying/smartlink/ISmartLinker;->stop()V

    .line 63
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;Z)V

    .line 64
    return-void
.end method
