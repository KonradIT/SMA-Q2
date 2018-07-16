.class Lcom/smalife/activity/MyProgressDialog$2;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/MyProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MyProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MyProgressDialog$2;->this$0:Lcom/smalife/activity/MyProgressDialog;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smalife/activity/MyProgressDialog$2;->this$0:Lcom/smalife/activity/MyProgressDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smalife/activity/MyProgressDialog;->flags:Z

    .line 113
    return-void
.end method
