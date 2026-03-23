.class public Lh2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/translate/TransApi$OnResultListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/baidu/translate/TransApi;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/app/AlertDialog;

.field private e:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/CheckBox;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lh2/a;->k:Ljava/lang/String;

    const-string v0, "http://60.205.205.49:8000/query"

    sput-object v0, Lh2/a;->l:Ljava/lang/String;

    const-string v0, "http://60.205.205.49:8000/insert"

    sput-object v0, Lh2/a;->m:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x5fs
        0x59s
        0x6fs
        0x75s
        0x54s
        0x75s
        0x5fs
        0x4bs
        0x65s
        0x79s
    .end array-data
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance p1, Lcom/baidu/translate/TransApi;

    const-string v0, "20170225000039856"

    const-string v1, "3qfku0JExu0Sr_2Ln75Z"

    invoke-direct {p1, v0, v1}, Lcom/baidu/translate/TransApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lh2/a;->b:Lcom/baidu/translate/TransApi;

    invoke-virtual {p1, p0}, Lcom/baidu/translate/TransApi;->setOnResultListener(Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void
.end method

.method static bridge synthetic a(Lh2/a;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lh2/a;->h:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lh2/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    iget-object v0, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "android:id/radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android:id/checkbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppNameAndVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07031b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppNameAndVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s_%s.json"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "Username"

    iget-object v3, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "AppName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "Id"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lh2/a;->l:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lh2/a$a;

    invoke-direct {v1, p0}, Lh2/a$a;-><init>(Lh2/a;)V

    invoke-static {p1, v0, v1}, Lcom/nirenr/talkman/util/HttpUtil;->g(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public d(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    iput-object p1, p0, Lh2/a;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/a;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh2/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lh2/a;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoLabelExt(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh2/a;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, p0, Lh2/a;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoResId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lh2/a;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lh2/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lh2/a;->i:Landroid/widget/CheckBox;

    const v2, 0x7f0705de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lh2/a;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lh2/a;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lh2/a;->g:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lh2/a;->h:Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lh2/a;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lh2/a;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lh2/a;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lh2/a;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070017

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lh2/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070186

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lh2/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7da

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lh2/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lh2/a;->d:Landroid/app/AlertDialog;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x3

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lh2/a;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lh2/a;->j:Ljava/lang/String;

    iget-object v1, p0, Lh2/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/a;->i:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setNodeLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lh2/a;->j:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/nirenr/talkman/util/d;->f(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lh2/a;->j:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/nirenr/talkman/util/d;->f(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lh2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lh2/a;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lh2/a;->j:Ljava/lang/String;

    iget-object p5, p0, Lh2/a;->h:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p5, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    iget-object v0, p0, Lh2/a;->h:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    const/4 v1, 0x0

    invoke-virtual {p5, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setNodeLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object p1, p0, Lh2/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onTransResult(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh2/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
