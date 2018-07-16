.class public Lcom/igexin/getuiext/ui/promotion/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)Lcom/igexin/getuiext/ui/promotion/c;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/h;->a:[I

    invoke-virtual {p1}, Lcom/igexin/getuiext/ui/promotion/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/igexin/getuiext/ui/promotion/d;

    invoke-direct {v0, p0, p1}, Lcom/igexin/getuiext/ui/promotion/d;-><init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/igexin/getuiext/ui/promotion/i;

    invoke-direct {v0, p0, p1}, Lcom/igexin/getuiext/ui/promotion/i;-><init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/igexin/getuiext/ui/promotion/k;

    invoke-direct {v0, p0, p1}, Lcom/igexin/getuiext/ui/promotion/k;-><init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
