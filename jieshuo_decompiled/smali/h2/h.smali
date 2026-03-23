.class public Lh2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/content/DialogInterface$OnDismissListener;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Landroid/app/AlertDialog;

.field private g:Landroid/widget/ListView;

.field private h:Z

.field private i:I

.field private final j:Ljava/text/DateFormat;

.field private final k:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lh2/h;->j:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const v2, 0x7f070664

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lh2/h;->k:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lh2/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lh2/h;->d:Ljava/lang/String;

    iput p3, p0, Lh2/h;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lh2/h;->j:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const v2, 0x7f070664

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lh2/h;->k:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lh2/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lh2/h;->d:Ljava/lang/String;

    iput p3, p0, Lh2/h;->c:I

    iput-object p4, p0, Lh2/h;->b:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lh2/h;->j:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const v2, 0x7f070664

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lh2/h;->k:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lh2/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lh2/h;->e:[Ljava/lang/String;

    iput p3, p0, Lh2/h;->c:I

    return-void
.end method

.method static bridge synthetic a(Lh2/h;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lh2/h;->k:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic b(Lh2/h;)Ljava/text/DateFormat;
    .locals 0

    iget-object p0, p0, Lh2/h;->j:Ljava/text/DateFormat;

    return-object p0
.end method

.method static bridge synthetic c(Lh2/h;)I
    .locals 0

    iget p0, p0, Lh2/h;->i:I

    return p0
.end method

.method static bridge synthetic d(Lh2/h;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh2/h;->e:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lh2/h;)Z
    .locals 0

    iget-boolean p0, p0, Lh2/h;->h:Z

    return p0
.end method

.method static bridge synthetic f(Lh2/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lh2/h;->a:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic g(Lh2/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh2/h;->d:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic h(Lh2/h;)I
    .locals 0

    iget p0, p0, Lh2/h;->c:I

    return p0
.end method

.method static bridge synthetic i(Lh2/h;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lh2/h;->g:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic j(Lh2/h;I)V
    .locals 0

    iput p1, p0, Lh2/h;->i:I

    return-void
.end method

.method static bridge synthetic k(Lh2/h;Z)V
    .locals 0

    iput-boolean p1, p0, Lh2/h;->h:Z

    return-void
.end method

.method static bridge synthetic l(Lh2/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lh2/h;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "_yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public n()V
    .locals 5

    iget-object v0, p0, Lh2/h;->e:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lh2/h;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh2/h;->e:[Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lk2/p;

    invoke-direct {v1}, Lk2/p;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lh2/h;->e:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lh2/h;->e:[Ljava/lang/String;

    :cond_1
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lh2/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/h;->g:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v0, p0, Lh2/h;->g:Landroid/widget/ListView;

    new-instance v1, Lh2/h$a;

    iget-object v2, p0, Lh2/h;->a:Landroid/content/Context;

    const v3, 0x1090010

    iget-object v4, p0, Lh2/h;->e:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lh2/h$a;-><init>(Lh2/h;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lh2/h;->g:Landroid/widget/ListView;

    new-instance v1, Lh2/h$b;

    invoke-direct {v1, p0}, Lh2/h$b;-><init>(Lh2/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lh2/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lh2/h;->c:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701ea

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070069

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lh2/h;->b:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lh2/h;->f:Landroid/app/AlertDialog;

    iget-object v1, p0, Lh2/h;->a:Landroid/content/Context;

    instance-of v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_2
    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_3
    iget-object v0, p0, Lh2/h;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lh2/h;->f:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/4 p1, -0x3

    const v0, 0x7f070670

    const v1, 0x7f070273

    const v2, 0x7f0700bc

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, p1, :cond_8

    const/4 p1, -0x2

    if-eq p2, p1, :cond_7

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->getBackupDir()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lh2/h;->c:I

    const v3, 0x7f0703a8

    const v5, 0x7f07026f

    if-ne p2, v2, :cond_2

    new-instance p2, Ljava/io/File;

    const-string v0, "\u526a\u5207\u677f"

    const-string v1, ".cbk"

    invoke-direct {p0, v0, v1}, Lh2/h;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lh2/h;->e:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/o;->o(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lh2/h;->a:Landroid/content/Context;

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lh2/h;->a:Landroid/content/Context;

    invoke-static {p1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    if-ne p2, v1, :cond_4

    new-instance p2, Ljava/io/File;

    const-string v0, "\u6536\u85cf\u5939"

    const-string v1, ".fbk"

    invoke-direct {p0, v0, v1}, Lh2/h;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lh2/h;->e:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/o;->o(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lh2/h;->a:Landroid/content/Context;

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lh2/h;->a:Landroid/content/Context;

    invoke-static {p1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    if-ne p2, v0, :cond_5

    new-instance p2, Lh2/h$c;

    invoke-direct {p2, p0, p1}, Lh2/h$c;-><init>(Lh2/h;Ljava/lang/String;)V

    new-array p1, v4, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void

    :cond_5
    const v0, 0x7f07031a

    if-ne p2, v0, :cond_6

    new-instance p2, Lh2/h$d;

    invoke-direct {p2, p0, p1}, Lh2/h$d;-><init>(Lh2/h;Ljava/lang/String;)V

    new-array p1, v4, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void

    :cond_6
    iget-object p2, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p2

    iget-object v0, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    new-instance v1, Lh2/h$e;

    invoke-direct {v1, p0, v0, p2, p1}, Lh2/h$e;-><init>(Lh2/h;ILandroid/util/SparseBooleanArray;Ljava/lang/String;)V

    new-array p1, v4, [Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    goto/16 :goto_9

    :cond_7
    :goto_2
    iget-object p1, p0, Lh2/h;->e:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v3

    if-gt v4, p1, :cond_17

    iget-object p1, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object p2, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, p2, :cond_b

    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lh2/h;->c:I

    if-eq v7, v2, :cond_9

    if-eq v7, v1, :cond_9

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lh2/h;->d:Ljava/lang/String;

    iget-object v9, p0, Lh2/h;->e:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/androlua/LuaUtil;->rmDir(Ljava/io/File;)Z

    goto :goto_4

    :cond_9
    iget-object v7, p0, Lh2/h;->e:[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v7, v5

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    iget p1, p0, Lh2/h;->c:I

    if-ne p1, v2, :cond_f

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p2, p0, Lh2/h;->e:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_d

    aget-object v2, p2, v1

    if-eqz v2, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getClipboardList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Lk2/c;->f(Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_f
    if-ne p1, v1, :cond_13

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p2, p0, Lh2/h;->e:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_11

    aget-object v2, p2, v1

    if-eqz v2, :cond_10

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFavoritesList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Lk2/c;->h(Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_13
    if-ne p1, v0, :cond_16

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p2, p0, Lh2/h;->e:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-object v2, p2, v1

    if-eqz v2, :cond_14

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Lk2/c;->k(Ljava/util/ArrayList;)V

    :cond_16
    :goto_8
    iget-object p1, p0, Lh2/h;->a:Landroid/content/Context;

    new-array p2, v3, [Ljava/lang/Object;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0703f0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    const v0, 0x7f0703bb

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_17
    :goto_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object v0, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lh2/h;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
