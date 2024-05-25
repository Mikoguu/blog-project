<?php
namespace App\Model\Eloquent;

/** 
 * class User
 * @package App\Model\Eloquent\
 * 
 * @property-write $id
 * @property-write $password
 * @property-write $name
*/
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'Users';
    public $timestamps = false;
    protected $fillable = [
        'name',
        'password',
        'created_at',
        'email'
    ];

    public static function getById(int $id)
    {
        return self::query()->find($id);
    }

    public static function getByEmail(string $email): ?self
    {
        return self::query()->where('email', '=', $email)->first();
    }


    public static function getList(int $limit = 10, int $offset = 0)
    {
        return self::query()
        ->limit($limit)
        ->offset($offset)
        ->orderBy('id', 'DESC')
        ->get();
    }

    public static function getPasswordHash(string $password)
    {
        return sha1('.,f.akjsduf' . $password);
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @return mixed
     */
    public function getPassword()
    {
        return $this->password;
    }


    public function isAdmin(): bool
    {
        return in_array($this->id, ADMIN_IDS);
    }
}