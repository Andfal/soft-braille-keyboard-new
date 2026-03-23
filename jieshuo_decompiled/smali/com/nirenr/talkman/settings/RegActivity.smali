.class public Lcom/nirenr/talkman/settings/RegActivity;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/RegActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/RegActivity;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/RegActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/RegActivity;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/RegActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/RegActivity;->e:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u7528\u6237\u540d\u5df2\u7ecf\u88ab\u5360\u7528"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "\u53c2\u6570\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "\u9080\u8bf7\u7801\u4e0d\u6b63\u786e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p1

    :pswitch_0
    const p1, 0x7f070464

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f070463

    goto :goto_1

    :pswitch_2
    const p1, 0x7f070462

    goto :goto_1

    :pswitch_3
    const p1, 0x7f0703ef

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7f9f1372 -> :sswitch_4
        -0x5c2405d7 -> :sswitch_3
        -0x4c6ecd89 -> :sswitch_2
        0x7cb6efc -> :sswitch_1
        0x79a63e58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/settings/RegActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/RegActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "946049229"

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "username"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "password"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "InviteCode"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "http://60.205.205.49:8000/reg"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/nirenr/talkman/util/HttpUtil;->g(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/androlua/LuaDialog;

    invoke-direct {p1, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070261

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f07045d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->show()V

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f070407

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f040005
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f07055c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->a:Landroid/widget/EditText;

    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->f:Landroid/widget/Button;

    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->g:Landroid/widget/Button;

    invoke-static {p0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f07030b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity;->f:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity;->g:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f040007

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f070351

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/nirenr/talkman/settings/RegActivity$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/RegActivity$1;-><init>(Lcom/nirenr/talkman/settings/RegActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 5

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/androlua/LuaDialog;

    invoke-direct {p1, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0705e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u540d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/RegActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u5bc6\u7801 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/RegActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f07034f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/RegActivity$2;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/RegActivity$2;-><init>(Lcom/nirenr/talkman/settings/RegActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/RegActivity$3;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/RegActivity$3;-><init>(Lcom/nirenr/talkman/settings/RegActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->show()V

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, 0x104000a

    const v4, 0x7f070261

    if-ne v0, v1, :cond_1

    new-instance p1, Lcom/androlua/LuaDialog;

    invoke-direct {p1, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f070401

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/androlua/LuaDialog;

    invoke-direct {p1, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/settings/RegActivity;->d(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/androlua/LuaDialog;

    invoke-direct {v0, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f07045d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/androlua/LuaDialog;->show()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
