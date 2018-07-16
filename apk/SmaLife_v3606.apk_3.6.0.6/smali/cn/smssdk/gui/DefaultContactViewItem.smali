.class public Lcn/smssdk/gui/DefaultContactViewItem;
.super Ljava/lang/Object;
.source "DefaultContactViewItem.java"

# interfaces
.implements Lcn/smssdk/gui/ContactItemMaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Ljava/util/HashMap;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_5

    .line 36
    new-instance v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;

    invoke-direct {v8, p0}, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;-><init>(Lcn/smssdk/gui/DefaultContactViewItem;)V

    .line 37
    .local v8, "viewHolder":Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 38
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "smssdk_contacts_listview_item"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 39
    .local v7, "resId":I
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "iv_contact"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 41
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lm/framework/ui/widget/asyncview/AsyncImageView;

    iput-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->ivContact:Lm/framework/ui/widget/asyncview/AsyncImageView;

    .line 42
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "tv_name"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 43
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "tv_contact"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 45
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "btn_add"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 47
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    .line 48
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "rl_lv_item_bg"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 49
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->bg:Landroid/view/View;

    .line 50
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "resId":I
    :goto_0
    if-eqz p1, :cond_4

    .line 57
    const-string v9, "fia"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 58
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvName:Landroid/widget/TextView;

    const-string v10, "nickname"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    const-string v9, "displayname"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "dspName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 62
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    const-string v10, "phone"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "smssdk_add_contact"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 67
    .restart local v7    # "resId":I
    if-lez v7, :cond_0

    .line 68
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setText(I)V

    .line 90
    :cond_0
    :goto_2
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->bg:Landroid/view/View;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    const-string v9, "isnew"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 93
    const-string v9, "isnew"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 94
    .local v5, "isNew":Z
    if-eqz v5, :cond_1

    .line 95
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->bg:Landroid/view/View;

    const v10, -0x80301

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    .end local v5    # "isNew":Z
    :cond_1
    const-string v9, "avatar"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "avatar"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v3, v9

    .line 101
    .local v3, "iconUrl":Ljava/lang/String;
    :goto_3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "smssdk_cp_default_avatar"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 102
    if-lez v7, :cond_2

    .line 103
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->ivContact:Lm/framework/ui/widget/asyncview/AsyncImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lm/framework/ui/widget/asyncview/AsyncImageView;->execute(Ljava/lang/String;I)V

    .line 105
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "displayname"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " icon url ==>> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_b

    .line 109
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->ivContact:Lm/framework/ui/widget/asyncview/AsyncImageView;

    invoke-virtual {v9, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    :goto_4
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    new-instance v10, Lcn/smssdk/gui/DefaultContactViewItem$1;

    invoke-direct {v10, p0, p1, p3}, Lcn/smssdk/gui/DefaultContactViewItem$1;-><init>(Lcn/smssdk/gui/DefaultContactViewItem;Ljava/util/HashMap;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .end local v2    # "dspName":Ljava/lang/String;
    .end local v3    # "iconUrl":Ljava/lang/String;
    .end local v7    # "resId":I
    :cond_4
    return-object p2

    .line 52
    .end local v8    # "viewHolder":Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;

    .restart local v8    # "viewHolder":Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;
    goto/16 :goto_0

    .line 64
    .restart local v2    # "dspName":Ljava/lang/String;
    :cond_6
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 71
    .end local v2    # "dspName":Ljava/lang/String;
    :cond_7
    const-string v9, "displayname"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .restart local v2    # "dspName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 75
    const-string v9, "phones"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 76
    .local v6, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 77
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "cp":Ljava/lang/String;
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v1    # "cp":Ljava/lang/String;
    .end local v6    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_8
    :goto_5
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvContact:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "smssdk_invite"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 85
    .restart local v7    # "resId":I
    if-lez v7, :cond_0

    .line 86
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->btnAdd:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 81
    .end local v7    # "resId":I
    :cond_9
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 99
    .restart local v7    # "resId":I
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 111
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "iconUrl":Ljava/lang/String;
    :cond_b
    iget-object v9, v8, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->ivContact:Lm/framework/ui/widget/asyncview/AsyncImageView;

    invoke-virtual {v9, v3}, Lm/framework/ui/widget/asyncview/AsyncImageView;->execute(Ljava/lang/String;)V

    goto :goto_4
.end method
