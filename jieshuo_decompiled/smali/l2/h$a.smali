.class Ll2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/h;->d(Landroid/content/res/AssetManager;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ll2/h;


# direct methods
.method constructor <init>(Ll2/h;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Ll2/h$a;->c:Ll2/h;

    iput p2, p0, Ll2/h$a;->a:I

    iput-object p3, p0, Ll2/h$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ll2/h$a;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ll2/h$a;->c:Ll2/h;

    iget-object v1, v1, Ll2/h;->a:Ljava/util/Map;

    iget-object v2, p0, Ll2/h$a;->b:Ljava/util/List;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Ll2/h$a;->b:Ljava/util/List;

    add-int/lit8 v3, v3, 0x2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
