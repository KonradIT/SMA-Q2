.class Lcn/smssdk/gui/ContactsPage$3$1;
.super Ljava/lang/Object;
.source "ContactsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage$3;->afterEvent(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/smssdk/gui/ContactsPage$3;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/ContactsPage$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage$3;->access$0(Lcn/smssdk/gui/ContactsPage$3;)Lcn/smssdk/gui/ContactsPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$7(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage$3;->access$0(Lcn/smssdk/gui/ContactsPage$3;)Lcn/smssdk/gui/ContactsPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$7(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage$3;->access$0(Lcn/smssdk/gui/ContactsPage$3;)Lcn/smssdk/gui/ContactsPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$7(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 156
    :cond_0
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage$3;->access$0(Lcn/smssdk/gui/ContactsPage$3;)Lcn/smssdk/gui/ContactsPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$3(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "smssdk_network_error"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "resId":I
    if-lez v0, :cond_1

    .line 158
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3$1;->this$1:Lcn/smssdk/gui/ContactsPage$3;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage$3;->access$0(Lcn/smssdk/gui/ContactsPage$3;)Lcn/smssdk/gui/ContactsPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$3(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_1
    return-void
.end method
