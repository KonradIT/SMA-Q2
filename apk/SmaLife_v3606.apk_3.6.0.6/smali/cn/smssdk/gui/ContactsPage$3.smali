.class Lcn/smssdk/gui/ContactsPage$3;
.super Lcn/smssdk/EventHandler;
.source "ContactsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage;->initData()V
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
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    .line 131
    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/ContactsPage$3;)Lcn/smssdk/gui/ContactsPage;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    return-object v0
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 134
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 135
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    move-object v0, p3

    .line 137
    check-cast v0, Ljava/util/ArrayList;

    .line 138
    .local v0, "rawList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v0, :cond_1

    .line 139
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcn/smssdk/gui/ContactsPage;->access$2(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)V

    .line 143
    :goto_0
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$6(Lcn/smssdk/gui/ContactsPage;)V

    .line 163
    .end local v0    # "rawList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local p3    # "data":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 141
    .restart local v0    # "rawList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local p3    # "data":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcn/smssdk/gui/ContactsPage;->access$2(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 144
    .end local v0    # "rawList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "data":Ljava/lang/Object;
    invoke-static {v1, p3}, Lcn/smssdk/gui/ContactsPage;->access$1(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)V

    .line 147
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/smssdk/SMSSDK;->getContacts(Z)V

    goto :goto_1

    .line 150
    .restart local p3    # "data":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance v2, Lcn/smssdk/gui/ContactsPage$3$1;

    invoke-direct {v2, p0}, Lcn/smssdk/gui/ContactsPage$3$1;-><init>(Lcn/smssdk/gui/ContactsPage$3;)V

    invoke-virtual {v1, v2}, Lcn/smssdk/gui/ContactsPage;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
