.class Lcn/smssdk/gui/RegisterPage$3;
.super Ljava/lang/Object;
.source "RegisterPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/RegisterPage;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/RegisterPage;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/RegisterPage;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage$3;->this$0:Lcn/smssdk/gui/RegisterPage;

    iput-object p2, p0, Lcn/smssdk/gui/RegisterPage$3;->val$dialog:Landroid/app/Dialog;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 442
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 443
    return-void
.end method