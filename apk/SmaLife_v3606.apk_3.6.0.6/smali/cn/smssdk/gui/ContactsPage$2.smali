.class Lcn/smssdk/gui/ContactsPage$2;
.super Ljava/lang/Object;
.source "ContactsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage;->afterPrepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/ContactsPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcn/smssdk/gui/ContactsPage;->access$1(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)V

    .line 67
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcn/smssdk/gui/ContactsPage;->access$2(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)V

    .line 69
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$3(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "smssdk_contact_list_page"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 71
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$3(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 72
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$4(Lcn/smssdk/gui/ContactsPage;)V

    .line 73
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$5(Lcn/smssdk/gui/ContactsPage;)V

    .line 75
    :cond_0
    return-void
.end method
