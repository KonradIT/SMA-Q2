.class public Lcn/smssdk/contact/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/smssdk/contact/a/h;

.field private c:Lcn/smssdk/contact/a/i;

.field private d:Lcn/smssdk/contact/a/e;

.field private e:Lcn/smssdk/contact/a/k;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcn/smssdk/contact/a/m;

.field private h:Lcn/smssdk/contact/a/j;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/o;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcn/smssdk/contact/a/f;


# direct methods
.method public constructor <init>(Lcn/smssdk/contact/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/smssdk/contact/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/smssdk/contact/a/a;->a(Lcn/smssdk/contact/c;)V

    return-void
.end method

.method private a(Lcn/smssdk/contact/c;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/contact/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcn/smssdk/contact/c;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcn/smssdk/contact/a/b;->a(Ljava/util/HashMap;)Lcn/smssdk/contact/a/b;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v3, v1, Lcn/smssdk/contact/a/h;

    if-eqz v3, :cond_3

    move-object v0, v1

    check-cast v0, Lcn/smssdk/contact/a/h;

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->b:Lcn/smssdk/contact/a/h;

    goto :goto_0

    :cond_3
    instance-of v3, v1, Lcn/smssdk/contact/a/i;

    if-eqz v3, :cond_4

    check-cast v1, Lcn/smssdk/contact/a/i;

    iput-object v1, p0, Lcn/smssdk/contact/a/a;->c:Lcn/smssdk/contact/a/i;

    goto :goto_0

    :cond_4
    instance-of v3, v1, Lcn/smssdk/contact/a/e;

    if-eqz v3, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "data1"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcn/smssdk/contact/c;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcn/smssdk/contact/a/b;->a(Ljava/util/HashMap;)Lcn/smssdk/contact/a/b;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/e;

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->d:Lcn/smssdk/contact/a/e;

    goto :goto_0

    :cond_5
    instance-of v0, v1, Lcn/smssdk/contact/a/k;

    if-eqz v0, :cond_6

    check-cast v1, Lcn/smssdk/contact/a/k;

    iput-object v1, p0, Lcn/smssdk/contact/a/a;->e:Lcn/smssdk/contact/a/k;

    goto :goto_0

    :cond_6
    instance-of v0, v1, Lcn/smssdk/contact/a/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->f:Ljava/util/ArrayList;

    :cond_7
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->f:Ljava/util/ArrayList;

    check-cast v1, Lcn/smssdk/contact/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    instance-of v0, v1, Lcn/smssdk/contact/a/m;

    if-eqz v0, :cond_9

    check-cast v1, Lcn/smssdk/contact/a/m;

    iput-object v1, p0, Lcn/smssdk/contact/a/a;->g:Lcn/smssdk/contact/a/m;

    goto/16 :goto_0

    :cond_9
    instance-of v0, v1, Lcn/smssdk/contact/a/j;

    if-eqz v0, :cond_a

    check-cast v1, Lcn/smssdk/contact/a/j;

    iput-object v1, p0, Lcn/smssdk/contact/a/a;->h:Lcn/smssdk/contact/a/j;

    goto/16 :goto_0

    :cond_a
    instance-of v0, v1, Lcn/smssdk/contact/a/q;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->i:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->i:Ljava/util/ArrayList;

    check-cast v1, Lcn/smssdk/contact/a/q;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    instance-of v0, v1, Lcn/smssdk/contact/a/g;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->j:Ljava/util/ArrayList;

    :cond_d
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->j:Ljava/util/ArrayList;

    check-cast v1, Lcn/smssdk/contact/a/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    instance-of v0, v1, Lcn/smssdk/contact/a/c;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->k:Ljava/util/ArrayList;

    :cond_f
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->k:Ljava/util/ArrayList;

    check-cast v1, Lcn/smssdk/contact/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    instance-of v0, v1, Lcn/smssdk/contact/a/l;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->l:Ljava/util/ArrayList;

    :cond_11
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->l:Ljava/util/ArrayList;

    check-cast v1, Lcn/smssdk/contact/a/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    instance-of v0, v1, Lcn/smssdk/contact/a/n;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->m:Ljava/util/ArrayList;

    :cond_13
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->m:Ljava/util/ArrayList;

    check-cast v1, Lcn/smssdk/contact/a/n;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    instance-of v0, v1, Lcn/smssdk/contact/a/o;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->o:Ljava/util/ArrayList;

    :cond_15
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->o:Ljava/util/ArrayList;

    check-cast v1, Lcn/smssdk/contact/a/o;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    instance-of v0, v1, Lcn/smssdk/contact/a/p;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/contact/a/a;->n:Ljava/util/ArrayList;

    :cond_17
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->n:Ljava/util/ArrayList;

    check-cast v1, Lcn/smssdk/contact/a/p;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    instance-of v0, v1, Lcn/smssdk/contact/a/f;

    if-eqz v0, :cond_2

    check-cast v1, Lcn/smssdk/contact/a/f;

    iput-object v1, p0, Lcn/smssdk/contact/a/a;->p:Lcn/smssdk/contact/a/f;

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lcn/smssdk/contact/a/h;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->b:Lcn/smssdk/contact/a/h;

    return-object v0
.end method

.method public b()Lcn/smssdk/contact/a/i;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->c:Lcn/smssdk/contact/a/i;

    return-object v0
.end method

.method public c()Lcn/smssdk/contact/a/e;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->d:Lcn/smssdk/contact/a/e;

    return-object v0
.end method

.method public d()Lcn/smssdk/contact/a/k;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->e:Lcn/smssdk/contact/a/k;

    return-object v0
.end method

.method public e()Lcn/smssdk/contact/a/m;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->g:Lcn/smssdk/contact/a/m;

    return-object v0
.end method

.method public f()Lcn/smssdk/contact/a/j;
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->h:Lcn/smssdk/contact/a/j;

    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/smssdk/contact/a/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->b:Lcn/smssdk/contact/a/h;

    if-eqz v0, :cond_0

    const-string v0, "name"

    iget-object v2, p0, Lcn/smssdk/contact/a/a;->b:Lcn/smssdk/contact/a/h;

    invoke-virtual {v2}, Lcn/smssdk/contact/a/h;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->c:Lcn/smssdk/contact/a/i;

    if-eqz v0, :cond_1

    const-string v0, "nickname"

    iget-object v2, p0, Lcn/smssdk/contact/a/a;->c:Lcn/smssdk/contact/a/i;

    invoke-virtual {v2}, Lcn/smssdk/contact/a/i;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->d:Lcn/smssdk/contact/a/e;

    if-eqz v0, :cond_2

    const-string v0, "group"

    iget-object v2, p0, Lcn/smssdk/contact/a/a;->d:Lcn/smssdk/contact/a/e;

    invoke-virtual {v2}, Lcn/smssdk/contact/a/e;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->e:Lcn/smssdk/contact/a/k;

    if-eqz v0, :cond_3

    const-string v0, "organization"

    iget-object v2, p0, Lcn/smssdk/contact/a/a;->e:Lcn/smssdk/contact/a/k;

    invoke-virtual {v2}, Lcn/smssdk/contact/a/k;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/d;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/d;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v0, "events"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->g:Lcn/smssdk/contact/a/m;

    if-eqz v0, :cond_6

    const-string v0, "photo"

    iget-object v2, p0, Lcn/smssdk/contact/a/a;->g:Lcn/smssdk/contact/a/m;

    invoke-virtual {v2}, Lcn/smssdk/contact/a/m;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->h:Lcn/smssdk/contact/a/j;

    if-eqz v0, :cond_7

    const-string v0, "note"

    iget-object v2, p0, Lcn/smssdk/contact/a/a;->h:Lcn/smssdk/contact/a/j;

    invoke-virtual {v2}, Lcn/smssdk/contact/a/j;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/q;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/q;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const-string v0, "websites"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/g;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/g;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const-string v0, "ims"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/c;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/c;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    const-string v0, "emails"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/l;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/l;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    const-string v0, "phones"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/l;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/l;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    const-string v0, "phones"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/n;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/n;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    const-string v0, "postals"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/p;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/p;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    const-string v0, "sipAddresses"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/smssdk/contact/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/contact/a/o;

    invoke-virtual {v0}, Lcn/smssdk/contact/a/o;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    const-string v0, "relations"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Lcn/smssdk/contact/a/a;->p:Lcn/smssdk/contact/a/f;

    if-eqz v0, :cond_18

    const-string v0, "identity"

    iget-object v2, p0, Lcn/smssdk/contact/a/a;->p:Lcn/smssdk/contact/a/f;

    invoke-virtual {v2}, Lcn/smssdk/contact/a/f;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p0}, Lcn/smssdk/contact/a/a;->n()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
