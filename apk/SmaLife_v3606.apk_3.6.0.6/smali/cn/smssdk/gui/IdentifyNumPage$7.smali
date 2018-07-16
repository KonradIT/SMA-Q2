.class Lcn/smssdk/gui/IdentifyNumPage$7;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    iput-object p2, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->val$dialog:Landroid/app/Dialog;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 355
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0}, Lcn/smssdk/gui/IdentifyNumPage;->access$13(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/IdentifyNumPage$7;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v1}, Lcn/smssdk/gui/IdentifyNumPage;->access$12(Lcn/smssdk/gui/IdentifyNumPage;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/smssdk/SMSSDK;->getVoiceVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method
