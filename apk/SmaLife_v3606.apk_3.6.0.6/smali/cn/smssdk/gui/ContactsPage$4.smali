.class Lcn/smssdk/gui/ContactsPage$4;
.super Ljava/lang/Object;
.source "ContactsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage;->refreshContactList()V
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
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 323
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$7(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$7(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$7(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance v1, Lcn/smssdk/gui/ContactsAdapter;

    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v2}, Lcn/smssdk/gui/ContactsPage;->access$8(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsListView;

    move-result-object v2

    iget-object v3, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v3}, Lcn/smssdk/gui/ContactsPage;->access$9(Lcn/smssdk/gui/ContactsPage;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v4}, Lcn/smssdk/gui/ContactsPage;->access$10(Lcn/smssdk/gui/ContactsPage;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/smssdk/gui/ContactsAdapter;-><init>(Lcn/smssdk/gui/ContactsListView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/smssdk/gui/ContactsPage;->access$11(Lcn/smssdk/gui/ContactsPage;Lcn/smssdk/gui/ContactsAdapter;)V

    .line 328
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$12(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$13(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactItemMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsAdapter;->setContactItemMaker(Lcn/smssdk/gui/ContactItemMaker;)V

    .line 329
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$8(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsListView;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$12(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsListView;->setAdapter(Lcn/smssdk/gui/ContactsListView$GroupAdapter;)V

    .line 330
    return-void
.end method
