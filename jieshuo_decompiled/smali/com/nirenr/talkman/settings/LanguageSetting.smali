.class public Lcom/nirenr/talkman/settings/LanguageSetting;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/LanguageSetting;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->a:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/LanguageSetting;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->e:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/LanguageSetting;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/LanguageSetting;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->c:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/LanguageSetting;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->d:Z

    return-void
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/LanguageSetting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->i(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/settings/LanguageSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/LanguageSetting;->save()V

    return-void
.end method

.method private h()V
    .locals 8

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ArrayListAdapter;

    const v1, 0x1090003

    invoke-direct {v6, p0, v1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x7f070318

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setHint(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0705a0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070095

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    new-instance v2, Lcom/nirenr/talkman/settings/LanguageSetting$7;

    invoke-direct {v2, p0, v6, v4}, Lcom/nirenr/talkman/settings/LanguageSetting$7;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;Landroid/widget/ArrayListAdapter;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/nirenr/talkman/settings/LanguageSetting$8;

    invoke-direct {v0, p0, v4, v6, v5}, Lcom/nirenr/talkman/settings/LanguageSetting$8;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;Landroid/app/AlertDialog;Landroid/widget/ArrayListAdapter;Landroid/widget/EditText;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v3

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v7, Lcom/nirenr/talkman/settings/LanguageSetting$9;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/nirenr/talkman/settings/LanguageSetting$9;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;Lcom/androlua/util/AsyncTaskX;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/ArrayListAdapter;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f0703ed

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lang:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lang"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/LanguageSetting$11;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/LanguageSetting$11;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;Ljava/lang/String;)V

    const v3, 0x7f070517

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/LanguageSetting$10;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/LanguageSetting$10;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;Ljava/lang/String;)V

    const p1, 0x7f070370

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private save()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/androlua/LuaResources;->save(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {}, Lcom/androlua/LuaResources;->clear()V

    invoke-virtual {p0}, Landroid/app/BaseActivity;->getSuperResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/androlua/LuaResources;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->c:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->d:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f07031c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {p0}, Lcom/androlua/LuaResources;->load(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->e:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070733

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0}, Lcom/androlua/LuaResources;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v2, Lcom/nirenr/talkman/settings/LanguageSetting$1;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/LanguageSetting$1;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070318

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHint(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f07027b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v6, Lcom/nirenr/talkman/settings/LanguageSetting$2;

    invoke-direct {v6, p0, v2}, Lcom/nirenr/talkman/settings/LanguageSetting$2;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f07027d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v6, Lcom/nirenr/talkman/settings/LanguageSetting$3;

    invoke-direct {v6, p0, v2}, Lcom/nirenr/talkman/settings/LanguageSetting$3;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->e:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    aget-object v6, v4, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    aget-object v4, v4, v2

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/androlua/LuaResources;->stringIds:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/ArrayListAdapter;

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->a:Landroid/widget/ArrayListAdapter;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f070599

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f0705dc

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x9

    const v2, 0x7f0705dd

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v2, 0x7f0702fc

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v2, 0x7f07026e

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x8

    const v2, 0x7f07026d

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v2, 0x7f0701f2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const v2, 0x7f0708ae

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x6

    const v2, 0x7f070161

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x7

    const v2, 0x7f070115

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->updateAllActivity()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    sget-object p2, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    aget-object p4, p2, p3

    iget-object p5, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {p5, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    aget-object p2, p2, p3

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/androlua/LuaResources;->stringIds:[I

    aget p2, p2, p3

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance p5, Lcom/nirenr/talkman/settings/LanguageSetting$12;

    invoke-direct {p5, p0, p3}, Lcom/nirenr/talkman/settings/LanguageSetting$12;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;I)V

    invoke-direct {p1, p0, p4, p2, p5}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f070453

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/LanguageSetting$5;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/settings/LanguageSetting$5;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;)V

    const v0, 0x7f070599

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/LanguageSetting$4;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/settings/LanguageSetting$4;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;)V

    const v0, 0x7f070477

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070060

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f07059d

    const v2, 0x7f07031b

    const/4 v3, 0x0

    const-string v4, "lang"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/LanguageSetting;->save()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    sget-object v1, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    array-length v5, v1

    if-ge v3, v5, :cond_1

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    aget-object v1, v1, v3

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/androlua/LuaResources;->stringIds:[I

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/androlua/LuaResources;->export(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_1
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/LanguageSetting;->save()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    :goto_3
    sget-object v6, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget-object v7, v6, v5

    iget-object v8, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    aget-object v6, v6, v5

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_3
    sget-object v6, Lcom/androlua/LuaResources;->stringIds:[I

    aget v6, v6, v5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {p0, v0, v2}, Lcom/androlua/LuaResources;->export(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_2
    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_b

    :pswitch_3
    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_b

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07054b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/LanguageSetting$6;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/LanguageSetting$6;-><init>(Lcom/nirenr/talkman/settings/LanguageSetting;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_b

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    const-string v2, "lang/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f07031d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    :pswitch_6
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/LanguageSetting;->save()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {p0, v0}, Lcom/androlua/LuaResources;->export(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    :goto_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_a

    :pswitch_7
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/LanguageSetting;->h()V

    goto :goto_b

    :pswitch_8
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/LanguageSetting;->save()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    :cond_7
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/androlua/LuaResources;->export(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {p0, v4, v0}, Lcom/nirenr/talkman/util/a;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_9
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/LanguageSetting;->save()V

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    :goto_a
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
