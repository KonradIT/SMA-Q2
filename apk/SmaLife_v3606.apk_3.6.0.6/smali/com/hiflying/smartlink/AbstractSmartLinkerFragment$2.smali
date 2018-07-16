.class Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$2;
.super Ljava/lang/Object;
.source "AbstractSmartLinkerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V

    .line 70
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iget-object v0, v0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v0}, Lcom/hiflying/smartlink/ISmartLinker;->stop()V

    .line 71
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$0(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;Z)V

    .line 72
    return-void
.end method
