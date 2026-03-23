.class Lcom/nirenr/talkman/TalkManAccessibilityService$w7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "w7"
.end annotation


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Landroid/widget/LinearLayout;

.field private final c:[Landroid/widget/RadioButton;

.field private final d:Ljava/lang/String;

.field private e:Landroid/app/AlertDialog;

.field final synthetic f:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->d:Ljava/lang/String;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->b:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/RadioGroup;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const v3, 0x7f070365

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f070368

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const v3, 0x7f070367

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const v3, 0x7f070366

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    new-array p1, v1, [Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->c:[Landroid/widget/RadioButton;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->c:[Landroid/widget/RadioButton;

    new-instance v7, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, p1

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->c:[Landroid/widget/RadioButton;

    aget-object v6, v6, p1

    aget-object v7, v2, p1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->c:[Landroid/widget/RadioButton;

    aget-object v6, v6, p1

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/EditText;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->a:Landroid/widget/EditText;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "*"

    if-le v1, v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_3

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x1

    :cond_3
    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->c:[Landroid/widget/RadioButton;

    aget-object p3, p3, v4

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->e:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->e:Landroid/app/AlertDialog;

    invoke-static {v0}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->c:[Landroid/widget/RadioButton;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    const-string v0, "*"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->c:[Landroid/widget/RadioButton;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->c:[Landroid/widget/RadioButton;

    const/4 v1, 0x3

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07019b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{}"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->d:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/util/List;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const p2, 0x7f0703a4

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const p2, 0x7f0703a2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method
