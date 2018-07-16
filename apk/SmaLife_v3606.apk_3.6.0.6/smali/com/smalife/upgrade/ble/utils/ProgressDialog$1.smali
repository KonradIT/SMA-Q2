.class Lcom/smalife/upgrade/ble/utils/ProgressDialog$1;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/upgrade/ble/utils/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/upgrade/ble/utils/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/smalife/upgrade/ble/utils/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog$1;->this$0:Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ProgressDialog$1;->this$0:Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->flags:Z

    .line 66
    return-void
.end method
